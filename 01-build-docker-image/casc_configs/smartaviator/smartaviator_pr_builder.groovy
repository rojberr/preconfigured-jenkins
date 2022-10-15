pipelineJob('smartaviator/smartaviator_pr_') {
  definition {
    cpsScm {
      scm {
        git {
          remote {
            url('https://github.com/rojberr/smartaviator.git')
          }
          branch('*/master')
        }
      }
      lightweight()
    }
  }
}