#this is the beginning for this git history
def dfs(self,arr)
    arr.push(self.name)
    self.children.each do |child|
        child.dfs(arr)
    end
    arr
end
#more git