syntax region markdownLinkText matchgroup=markdownLinkTextDelimiter
    \ start="!\=\[\%(\_[^]]*]\%( \=[[(]\)\)\@=" end="\]\%( \=[[(]\)\@="
    \ nextgroup=markdownLink,markdownId skipwhite
    \ contains=@markdownInline,markdownLineStart
    \ concealends

syntax region markdownLink matchgroup=markdownLinkDelimiter 
	\ start="(" end=")"
	\ contains=markdownUrl
	\ keepend contained
	\ conceal

syntax region markdownH1 matchgroup=markdownH1Delimiter start="##\@!"      end="#*\s*$" keepend oneline concealends contains=@markdownInline,markdownAutomaticLink contained
syntax region markdownH2 matchgroup=markdownH2Delimiter start="###\@!"     end="#*\s*$" keepend oneline concealends contains=@markdownInline,markdownAutomaticLink contained
syntax region markdownH3 matchgroup=markdownH3Delimiter start="####\@!"    end="#*\s*$" keepend oneline concealends contains=@markdownInline,markdownAutomaticLink contained
syntax region markdownH4 matchgroup=markdownH4Delimiter start="#####\@!"   end="#*\s*$" keepend oneline concealends contains=@markdownInline,markdownAutomaticLink contained
syntax region markdownH5 matchgroup=markdownH5Delimiter start="######\@!"  end="#*\s*$" keepend oneline concealends contains=@markdownInline,markdownAutomaticLink contained
syntax region markdownH6 matchgroup=markdownH6Delimiter start="#######\@!" end="#*\s*$" keepend oneline concealends contains=@markdownInline,markdownAutomaticLink contained

" Requires a nerdfont
syn match inProgress "\s*- \[ ] .*$" contains=inProgressMark
syn match inProgressMark "- \[ ]" conceal cchar=
syn match itemComplete "\s*- \[x] .*$" contains=itemCompleteMark
syn match itemCompleteMark "- \[x]" conceal cchar=

