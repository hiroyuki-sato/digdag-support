import digdag
class Hoge(object):
    def hoge(self):
        print digdag.env.params['hoge']
#        print digdag.env.params['fuga2']
