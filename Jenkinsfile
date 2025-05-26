pipeline {
    agent any

    parameters {
        string(name: 'TRACK_DIR', defaultValue: '/home/Parth/documents', description: 'Directory to monitor for changes')
    }

    stages {
        stage('Run Tracker Script') {
            steps {
                echo "Monitoring directory: ${params.TRACK_DIR}"
                sh '''
                    chmod +x check_disk_usage.sh
                    ./check_disk_usage.sh "${TRACK_DIR}"
                '''
            }
        }
    }
}
