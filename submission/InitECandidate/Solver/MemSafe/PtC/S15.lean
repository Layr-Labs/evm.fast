import InitECandidate.Solver.MemSafe.PtC.S14

/-!
# PtC: stages 1 to 3
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.PtC
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

theorem cchain1 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hP : PtPre E) (hEnc : HypEncTx σ) (hQT : LocIns QT) (C : Cx0 E En S)
    (hk : ∀ (En' : Env) (S' : FS) (rp rl : BitVec 64) (buf n : Nat) (CV : List (BitVec 64)) (w a b c : BitVec 64)
      (pr : List (BitVec 64)) (mg rs : BitVec 64), Cx3 E En' S' rp rl buf n CV w a b c pr mg rs →
      CW' (PA E En' S') ptS38 (cbd ptS38) QT) :
    CW' (PA E En S) ptS0 (cbd ptS0) QT :=
  cpt_c1 hP hEnc hQT C fun rp rl buf n En1 S1 C1 =>
  cpt_c2a hQT C1 fun w En2 S2 C2 =>
  cpt_c3 hQT C2 fun En3 S3 a b c pr mg rs C3 => hk En3 S3 rp rl buf n _ w a b c pr mg rs C3

theorem cchain2 {E : PtE σ} {En : Env} {S : FS}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w a b c : BitVec 64} {pr : List (BitVec 64)}
    {mg rs : BitVec 64} (hP : PtPreX E) (hOH : OwnerHeap E.Γ0)
    (hcoinR : heapBase ≤ (rd E.s0.memory (E.be + BitVec.ofNat 64 32)).toNat ∧
      (rd E.s0.memory (E.be + BitVec.ofNat 64 32)).toNat + 20 ≤ heapEnd)
    (hpm : HypPmM σ (2 ^ 24 + 2)) (hpcm : HypPcm σ (2 ^ 24 + 2)) (hR : HypRcpt σ) (hgs : Bal.HGS σ)
    (hpl : pr.length = 4) (C : Cx3 E En S rp rl buf n CV w a b c pr mg rs) :
    CW' (PA E En S) ptS38 (cbd ptS38) (fun r t => r = some (.returned (.val (.word 0))) ∧ PtEnd E t) := by
  have hQT := locIns_ptEnd E
  refine cpt_c4a hQT (cyb_of_cx3 C) (by fresh) fun En1 S1 wt C1 => ?_
  refine cpt_c4b (wt := wt) (mg := mg) (rs := rs) (pr := pr) hQT C1 (by simp) (by simp) (by simp) (by simp) hpl
    (by simp) (by simp) (by fresh) fun C2 => ?_
  refine cpt_c5a hP.toPtPre hQT C2 (by fresh) fun nv hnv C3 => ?_
  refine cpt_c5b hP hQT C3 hnv (by simp) (by simp) (by fresh) (by fresh) (by fresh) fun En2 S2 wa C4 => ?_
  refine cpt_c6a (nbl := ((nv + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat) (wt := wt) (wa := wa) hP hnv
    (nal_n (nalOK_lt hP.toPtPre hnv)) (by simp) C4 (by fresh) (by fresh) fun En3 S3 nkv hnkv C5 => ?_
  refine cpt_c6b (ex := []) hQT (nk_bound hP.toPtPre hnv hnkv) C5 (by simp) (by fresh) (by fresh) (by fresh)
    fun En4 S4 ak C6 => ?_
  refine cpt_c7 hP hnv hnkv C6 (by simp) (by simp) (by simp) (by fresh) (by fresh) fun C7 => ?_
  have hnbl := nal_n (nalOK_lt hP.toPtPre hnv)
  have K7 : TeK E (LE2 En4 nv nkv) S4 rp rl buf n CV w wt wa ak nv nkv 0 0
      ((nv + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat :=
    tek_of_cyb C7 (by simp) (by simp) (by simp) (by simp) (by simp) ⟨a, b, c, by simp⟩ ⟨pr, by simp, hpl⟩
      ⟨mg, by simp, by simp⟩ ⟨rs, by simp⟩ hnv hnbl hnkv (by simp) (by simp) (by simp) (by simp) (by simp) (by simp)
      (by simp) (by simp) (by simp) (by simp) (by simp) (by simp) (by simp [TeRd2, TeRd])
  refine cpt_c8a hQT K7 ?_
  refine cpt_c8b hP hQT K7 K7.hm144 K7.hm152 fun v1 v2 hc K8 => ?_
  refine cpt_c8c hQT K8 fun En9 S9 th K9 hth hobjth => ?_
  refine Eb.cw_pre (P := PA E En9 (SAd S9 wt wa _ (nv.toNat + 1))) ?_ (fun t _ ht => pa_adopt_te hP.toPtPre K9 hc ht)
  refine cpt_c9 hP hQT (adk_of_tek K9) (rdin_of_tek K9) fun En10 S10 wm mg' hmgE hmgS K10 => ?_
  refine cpt_c10 hP hQT K10 fun En11 S11 aaw akw K11 haa hak hoa hoak => ?_
  have hL : ∀ p ∈ [(40, mg'), (24, rd E.s0.memory (E.tx + BitVec.ofNat 64 152)), (16, w), (8, wt)], p.1 ≤ 40 ∧ p.1 ≠ 32 ∧ p.1 % 8 = 0 := by
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl <;> norm_num
  refine cpt_c11 hP.toPtPre hQT K11 hL haa hak hoa hoak fun En12 S12 v32 v96 v120 K12 haa2 hak2 hoa2 hoak2 hb32 hp120 hd96 htg => ?_
  refine cpt_c12 hP.toPtPre K12 hL haa2 hak2 hoa2 hoak2 hb32 hd96 fun S13 K13 hmono => ?_
  exact cpt_call hP hOH hcoinR hpm hpcm hR hgs K13 (hmono _ hoa2) (hmono _ hoak2) (hmono _ hb32) (hmono _ htg) (hmono _ hp120) (hmono _ hd96)

end InitECandidate.Solver.MemSafe.PtC
