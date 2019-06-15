def make_memo
    puts "【メモ追加モードを選択しました。】"
    print  "メモのタイトルは？"
    title = gets.chomp
    print "メモの本文は？"
    content = gets.chomp
    memo = {"タイトル" => title , "本文" => content}
end

def show_memos(memos)
    puts "【メモ追加モードを選択しました。】"
    puts "入力されたのは？"
    
    memos.each do|memo|
        puts memo["タイトル"]+ "：" + memo["本文"]
    end
end


memos =[]

while true
    puts "モードを選択してください"
    puts "【add】メモを追加する"
    puts "【show】メモを確認する"
    print "showまたはaddを入力してください→"
    mode = gets.chomp
    if mode =="add"
        memos.push(make_memo)
    elsif mode =="show"
        show_memos(memos)
    
    else 
        puts "エラーです"
    end
end