import InitECandidate.Solver.MemSafe.BalEnc.Defs

set_option autoImplicit false

/-!
# Name distinctness for a list section

`SecNm l n lp e c hlE hlP`: the seven section-local names are distinct from each other and from the
function-level names `p q i dst tmp w ad` (`SecNm` is decidable: each instance is `by decide`).
-/

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack.Pancake.PanLang (MlS)

structure SecNm (l n lp e c hlE hlP : MlS) : Prop where
  l_bP : l ≠ bP
  l_bQ : l ≠ bQ
  l_bI : l ≠ bI
  l_bDst : l ≠ bDst
  l_bTmp : l ≠ bTmp
  l_bW : l ≠ bW
  l_bAd : l ≠ bAd
  n_bP : n ≠ bP
  n_bQ : n ≠ bQ
  n_bI : n ≠ bI
  n_bDst : n ≠ bDst
  n_bTmp : n ≠ bTmp
  n_bW : n ≠ bW
  n_bAd : n ≠ bAd
  lp_bP : lp ≠ bP
  lp_bQ : lp ≠ bQ
  lp_bI : lp ≠ bI
  lp_bDst : lp ≠ bDst
  lp_bTmp : lp ≠ bTmp
  lp_bW : lp ≠ bW
  lp_bAd : lp ≠ bAd
  e_bP : e ≠ bP
  e_bQ : e ≠ bQ
  e_bI : e ≠ bI
  e_bDst : e ≠ bDst
  e_bTmp : e ≠ bTmp
  e_bW : e ≠ bW
  e_bAd : e ≠ bAd
  c_bP : c ≠ bP
  c_bQ : c ≠ bQ
  c_bI : c ≠ bI
  c_bDst : c ≠ bDst
  c_bTmp : c ≠ bTmp
  c_bW : c ≠ bW
  c_bAd : c ≠ bAd
  hlE_bP : hlE ≠ bP
  hlE_bQ : hlE ≠ bQ
  hlE_bI : hlE ≠ bI
  hlE_bDst : hlE ≠ bDst
  hlE_bTmp : hlE ≠ bTmp
  hlE_bW : hlE ≠ bW
  hlE_bAd : hlE ≠ bAd
  hlP_bP : hlP ≠ bP
  hlP_bQ : hlP ≠ bQ
  hlP_bI : hlP ≠ bI
  hlP_bDst : hlP ≠ bDst
  hlP_bTmp : hlP ≠ bTmp
  hlP_bW : hlP ≠ bW
  hlP_bAd : hlP ≠ bAd
  l_n : l ≠ n
  l_lp : l ≠ lp
  l_e : l ≠ e
  l_c : l ≠ c
  l_hlE : l ≠ hlE
  l_hlP : l ≠ hlP
  n_lp : n ≠ lp
  n_e : n ≠ e
  n_c : n ≠ c
  n_hlE : n ≠ hlE
  n_hlP : n ≠ hlP
  lp_e : lp ≠ e
  lp_c : lp ≠ c
  lp_hlE : lp ≠ hlE
  lp_hlP : lp ≠ hlP
  e_c : e ≠ c
  e_hlE : e ≠ hlE
  e_hlP : e ≠ hlP
  c_hlE : c ≠ hlE
  c_hlP : c ≠ hlP
  hlE_hlP : hlE ≠ hlP

theorem SecNm.mk' {l n lp e c hlE hlP : MlS}
    (h : (l ≠ bP ∧ l ≠ bQ ∧ l ≠ bI ∧ l ≠ bDst ∧ l ≠ bTmp ∧ l ≠ bW ∧ l ≠ bAd) ∧
    (n ≠ bP ∧ n ≠ bQ ∧ n ≠ bI ∧ n ≠ bDst ∧ n ≠ bTmp ∧ n ≠ bW ∧ n ≠ bAd) ∧
    (lp ≠ bP ∧ lp ≠ bQ ∧ lp ≠ bI ∧ lp ≠ bDst ∧ lp ≠ bTmp ∧ lp ≠ bW ∧ lp ≠ bAd) ∧
    (e ≠ bP ∧ e ≠ bQ ∧ e ≠ bI ∧ e ≠ bDst ∧ e ≠ bTmp ∧ e ≠ bW ∧ e ≠ bAd) ∧
    (c ≠ bP ∧ c ≠ bQ ∧ c ≠ bI ∧ c ≠ bDst ∧ c ≠ bTmp ∧ c ≠ bW ∧ c ≠ bAd) ∧
    (hlE ≠ bP ∧ hlE ≠ bQ ∧ hlE ≠ bI ∧ hlE ≠ bDst ∧ hlE ≠ bTmp ∧ hlE ≠ bW ∧ hlE ≠ bAd) ∧
    (hlP ≠ bP ∧ hlP ≠ bQ ∧ hlP ≠ bI ∧ hlP ≠ bDst ∧ hlP ≠ bTmp ∧ hlP ≠ bW ∧ hlP ≠ bAd) ∧
    (l ≠ n ∧ l ≠ lp ∧ l ≠ e ∧ l ≠ c ∧ l ≠ hlE ∧ l ≠ hlP) ∧
    (n ≠ lp ∧ n ≠ e ∧ n ≠ c ∧ n ≠ hlE ∧ n ≠ hlP) ∧
    (lp ≠ e ∧ lp ≠ c ∧ lp ≠ hlE ∧ lp ≠ hlP) ∧
    (e ≠ c ∧ e ≠ hlE ∧ e ≠ hlP) ∧ (c ≠ hlE ∧ c ≠ hlP) ∧ (hlE ≠ hlP)) :
    SecNm l n lp e c hlE hlP := by
  obtain ⟨⟨a1,a2,a3,a4,a5,a6,a7⟩,⟨b1,b2,b3,b4,b5,b6,b7⟩,⟨c1,c2,c3,c4,c5,c6,c7⟩,⟨d1,d2,d3,d4,d5,d6,d7⟩,⟨e1,e2,e3,e4,e5,e6,e7⟩,⟨f1,f2,f3,f4,f5,f6,f7⟩,⟨g1,g2,g3,g4,g5,g6,g7⟩,⟨h1,h2,h3,h4,h5,h6⟩,⟨i1,i2,i3,i4,i5⟩,⟨j1,j2,j3,j4⟩,⟨k1,k2,k3⟩,⟨m1,m2⟩,m3⟩ := h
  exact ⟨a1,a2,a3,a4,a5,a6,a7,b1,b2,b3,b4,b5,b6,b7,c1,c2,c3,c4,c5,c6,c7,d1,d2,d3,d4,d5,d6,d7,e1,e2,e3,e4,e5,e6,e7,f1,f2,f3,f4,f5,f6,f7,g1,g2,g3,g4,g5,g6,g7,h1,h2,h3,h4,h5,h6,i1,i2,i3,i4,i5,j1,j2,j3,j4,k1,k2,k3,m1,m2,m3⟩

end InitECandidate.Solver.MemSafe.BalEnc

namespace InitECandidate.Solver.MemSafe.BalEnc


theorem fixNe : (bP ≠ bQ ∧ bP ≠ bI ∧ bP ≠ bDst ∧ bP ≠ bTmp ∧ bP ≠ bW ∧ bP ≠ bAd ∧ bQ ≠ bI ∧ bQ ≠ bDst ∧ bQ ≠ bTmp ∧ bQ ≠ bW ∧ bQ ≠ bAd ∧ bI ≠ bDst ∧ bI ≠ bTmp ∧ bI ≠ bW ∧ bI ≠ bAd ∧ bDst ≠ bTmp ∧ bDst ≠ bW ∧ bDst ≠ bAd ∧ bTmp ≠ bW ∧ bTmp ≠ bAd ∧ bW ≠ bAd) ∧ (bQ ≠ bP ∧ bI ≠ bP ∧ bDst ≠ bP ∧ bTmp ≠ bP ∧ bW ≠ bP ∧ bAd ≠ bP ∧ bI ≠ bQ ∧ bDst ≠ bQ ∧ bTmp ≠ bQ ∧ bW ≠ bQ ∧ bAd ≠ bQ ∧ bDst ≠ bI ∧ bTmp ≠ bI ∧ bW ≠ bI ∧ bAd ≠ bI ∧ bTmp ≠ bDst ∧ bW ≠ bDst ∧ bAd ≠ bDst ∧ bW ≠ bTmp ∧ bAd ≠ bTmp ∧ bAd ≠ bW) := by
  refine ⟨?_, ?_⟩ <;> refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> decide

set_option synthInstance.maxSize 100000 in
set_option synthInstance.maxHeartbeats 1000000 in
example : SecNm bL bN bLp bE bC bHl bHl2 := SecNm.mk' (by decide)
set_option synthInstance.maxSize 100000 in
set_option synthInstance.maxHeartbeats 1000000 in
example : SecNm bL2 bN2 bLp2 bE2 bC2 bHl6 bHl7 := SecNm.mk' (by decide)

end InitECandidate.Solver.MemSafe.BalEnc
