pipelineJob('simple_node_app/simple_node_app_pr_builder') {
  definition {
    cpsScm {
      scm {
        git {
          remote {
            url('https://github.com/rojberr/simple-node-app.git')
          }
          branch('*/master')
        }
      }
      lightweight()
    }
  }
}