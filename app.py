from flask import Flask, render_template, request, redirect, url_for, flash
from pymongo import MongoClient
from werkzeug.security import generate_password_hash, check_password_hash

app = Flask(__name__)
app.secret_key = 'your_secret_key'  # Set a secret key for session management

# MongoDB connection (replace with your MongoDB connection URI)
client = MongoClient('mongodb+srv://<username>:<password>@cluster0.mongodb.net/mydatabase?retryWrites=true&w=majority')
db = client['mydatabase']
users_collection = db['users']
feedback_collection = db['feedback']

@app.route('/')
def home():
    return render_template('login.html')

@app.route('/signup', methods=['GET', 'POST'])
def signup():
    if request.method == 'POST':
        username = request.form['login_username']
        email = request.form['signup_email']
        password = request.form['login_password']
        
        # Hash the password before storing
        hashed_password = generate_password_hash(password)

        # Store the user in MongoDB
        users_collection.insert_one({
            'username': username,
            'email': email,
            'password': hashed_password
        })
        flash('Sign up successful! You can log in now.', 'success')
        return redirect(url_for('home'))

    return render_template('login.html')

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['login_username']
        password = request.form['login_password']

        user = users_collection.find_one({'username': username})

        if user and check_password_hash(user['password'], password):
            flash('Login successful!', 'success')
            return redirect(url_for('dashboard'))  # Redirect to dashboard after successful login
        else:
            flash('Invalid username or password', 'danger')
            return redirect(url_for('home'))  # Redirect back to the login page on failure

    return render_template('login.html')

@app.route('/dashboard')
def dashboard():
    return render_template('dashboard.html')

@app.route('/feedback', methods=['GET', 'POST'])
def feedback():
    if request.method == 'POST':
        username = request.form['login_username']
        email = request.form['signup_email']
        message = request.form['message']

        # Store the feedback in MongoDB
        feedback_data = {
            'username': username,
            'email': email,
            'message': message
        }
        feedback_collection.insert_one(feedback_data)

        flash('Feedback submitted successfully!', 'success')
        return redirect(url_for('feedback'))

    return render_template('feedback.html')

@app.route('/view_feedback')
def view_feedback():
    all_feedback = feedback_collection.find()
    return render_template('view_feedback.html', feedback=all_feedback)

if __name__ == '__main__':
    app.run(debug=True)
