# JRuby Rails 7.1 Starter App (No DB)  

This is a minimal Rails 7.1 application running on **JRuby 9.4.5.0** without a database.  
It displays basic system information at the root route (`/`) and is ready to be packaged as a **WAR file** for deployment on WebLogic.  

---

## Prerequisites

- **Java 8** (JDK 1.8)
- **JRuby 9.4.5.0**
- **Bundler** (tested with 2.6.x)
- **Rails 7.1.x**
- **Warbler** gem

---

## Setup Instructions

1. **Clone the repository**
```bash
git clone git@github.com:qisantanu/myapp_for_weblogic.git
cd myapp_for_weblogic
```

2. Use JRuby

```bash
rvm use jruby-9.4.5.0
# or using rbenv
rbenv local jruby-9.4.5.0
```

3. Install dependencies

```bash
bundle install
```

4. Run the Rails server

```bash
bin/rails server
```

Visit http://localhost:3000
 to see:

Ruby/JRuby version
Rails version
Java version
Environment


5. Build the WAR file

`RAILS_ENV=production rails assets:precompile`

`bundle exec warble war`



The WAR file your_app_name.war will be generated in the root directory.
Deploy this WAR to __WebLogic__.