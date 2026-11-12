import InitECandidate.Solver.MemSafe.Ptx.PtX1

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem cyb_of_cx3 {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w a b c : BitVec 64} {pr : List (BitVec 64)} {mg rs : BitVec 64}
    (C : Cx3 E En S rp rl buf n CV w a b c pr mg rs) :
    CyB E En S rp rl buf n CV w [(nm "mgas", .val (.word mg)), (nm "reservoir", .val (.word rs)),
      (nm "price", wv pr), (nm "intrinsic", wv [a, b, c])] [Fct.prop (mg.toNat ≤ 2 ^ 24)] [] :=
  cyb_of_cxb ⟨C.1, fun p hp => by
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl
    · exact C.2.2.2.2.1
    · exact C.2.2.2.2.2.1
    · exact C.2.2.1
    · exact C.2.1,
    fun f hf => by
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hf
      subst hf; exact C.2.2.2.2.2.2⟩

theorem tek_of_cyb {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv : BitVec 64} {nbl : Nat} {ex : List (MlS × ValueHOL 64)} {fs rdl : List Fct}
    (C : CyB E En S rp rl buf n CV w ex fs rdl)
    (hte : (nm "te", (.val (.word wt) : ValueHOL 64)) ∈ ex) (hwa : (nm "al_addrs", (.val (.word wa) : ValueHOL 64)) ∈ ex)
    (hak : (nm "al_keys", (.val (.word ak) : ValueHOL 64)) ∈ ex) (hnal : (nm "nal", (.val (.word nv) : ValueHOL 64)) ∈ ex)
    (hnk : (nm "nkeys", (.val (.word nkv) : ValueHOL 64)) ∈ ex)
    (hint : ∃ a b c : BitVec 64, (nm "intrinsic", wv [a, b, c]) ∈ ex)
    (hprice : ∃ pr : List (BitVec 64), (nm "price", wv pr) ∈ ex ∧ pr.length = 4)
    (hmg : ∃ mg : BitVec 64, (nm "mgas", (.val (.word mg) : ValueHOL 64)) ∈ ex ∧ Fct.prop (mg.toNat ≤ 2 ^ 24) ∈ fs)
    (hrs : ∃ rs : BitVec 64, (nm "reservoir", (.val (.word rs) : ValueHOL 64)) ∈ ex)
    (hnv : NalOK E nv) (hnbl : nbl = (nv.toNat + 1) * 8) (hnkv : nkv.toNat = nsS E.s0.memory (lst0 E) nv.toNat)
    (hm0 : Fct.memw (wt + BitVec.ofNat 64 0) w ∈ fs) (hm144 : Fct.memw (wt + BitVec.ofNat 64 144) 0 ∈ fs)
    (hm152 : Fct.memw (wt + BitVec.ofNat 64 152) 0 ∈ fs) (hfbt : Fct.fbuf wt 200 ∈ fs)
    (hppt : Fct.prop (BlkP wt 200) ∈ fs) (hord : Fct.prop (wt.toNat + 200 ≤ wa.toNat) ∈ fs)
    (hppa : Fct.prop (BlkP wa nbl) ∈ fs) (hfba : Fct.fbuf wa nbl ∈ fs)
    (harrf : Fct.arrbuf wa nbl (nv.toNat + 1) 20 ∈ fs) (harr1 : Fct.arrbuf wa nbl 1 20 ∈ fs)
    (hobj : Fct.obj ak tVAL (akN nkv.toNat) ∈ fs)
    (hppk : Fct.prop (ak.toNat % 8 = 0 ∧ heapBase ≤ ak.toNat ∧ ak.toNat + akN nkv.toNat ≤ heapEnd) ∈ fs)
    (hrd : rdl = Fct.arrbuf wa nbl (nv.toNat + 1) 20 :: Fct.arrbuf wa nbl 1 20 :: TeRd2 wt w 0 0) :
    TeK E En S rp rl buf n CV w wt wa ak nv nkv 0 0 nbl := by
  obtain ⟨C0, hE, hF, hR⟩ := C
  refine ⟨C0, ex_get hE hte, ex_get hE hwa, ex_get hE hak, ex_get hE hnal, ex_get hE hnk, ?_, ?_, ?_, ?_, hnv, hnbl,
    hnkv, fxs_get hF hm0, fxs_get hF hm144, fxs_get hF hm152, fxs_get hF hfbt, fxs_get hF hppt, fxs_get hF hord,
    fxs_get hF hppa, fxs_get hF hfba, fxs_get hF harrf, fxs_get hF harr1, fxs_get hF hobj, fxs_get hF hppk, ?_⟩
  · obtain ⟨a, b, c, h⟩ := hint; exact ⟨a, b, c, ex_get hE h⟩
  · obtain ⟨pr, h, hl⟩ := hprice; exact ⟨pr, ex_get hE h, hl⟩
  · obtain ⟨mg, h, hf⟩ := hmg; exact ⟨mg, ex_get hE h, fxs_get hF hf⟩
  · obtain ⟨rs, h⟩ := hrs; exact ⟨rs, ex_get hE h⟩
  · rw [hrd] at hR; exact hR

macro "fresh" : tactic => `(tactic| simp (config := {decide := true}) [List.map])

theorem chain2 {E : PtE σ} {En : Env} {S : FS}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w a b c : BitVec 64} {pr : List (BitVec 64)}
    {mg rs : BitVec 64} {M : Nat} (hP : PtPreX E) (hOH : OwnerHeap E.Γ0)
    (hcoinR : heapBase ≤ (rd E.s0.memory (E.be + BitVec.ofNat 64 32)).toNat ∧
      (rd E.s0.memory (E.be + BitVec.ofNat 64 32)).toNat + 20 ≤ heapEnd)
    (hM : 2 ^ 24 + 2 ≤ M) (hpm : HypPmM σ M) (hpcm : HypPcm σ M) (hR : HypRcpt σ) (hgs : Bal.HGS σ)
    (hpl : pr.length = 4) (C : Cx3 E En S rp rl buf n CV w a b c pr mg rs) :
    Hoare σ guestCtx (PA E En S) ptS38
      (fun r t => r = some (.returned (.val (.word 0))) ∧ PtEnd E t) := by
  have hQT := locIns_ptEnd E
  refine pt_c4a hQT (cyb_of_cx3 C) (by fresh) fun En1 S1 wt C1 => ?_
  refine pt_c4b (wt := wt) (mg := mg) (rs := rs) (pr := pr) hQT C1 (by simp) (by simp) (by simp) (by simp) hpl
    (by simp) (by simp) (by fresh) fun C2 => ?_
  refine pt_c5a hP.toPtPre hQT C2 (by fresh) fun nv hnv C3 => ?_
  refine pt_c5b hP hQT C3 hnv (by simp) (by simp) (by fresh) (by fresh) (by fresh) fun En2 S2 wa C4 => ?_
  refine pt_c6a (nbl := ((nv + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat) (wt := wt) (wa := wa) hP hnv
    (nal_n (nalOK_lt hP.toPtPre hnv)) (by simp) C4 (by fresh) (by fresh) fun En3 S3 nkv hnkv C5 => ?_
  refine pt_c6b (ex := []) hQT (nk_bound hP.toPtPre hnv hnkv) C5 (by simp) (by fresh) (by fresh) (by fresh)
    fun En4 S4 ak C6 => ?_
  refine pt_c7 hP hnv hnkv C6 (by simp) (by simp) (by simp) (by fresh) (by fresh) fun C7 => ?_
  have hnbl := nal_n (nalOK_lt hP.toPtPre hnv)
  have K7 : TeK E (LE2 En4 nv nkv) S4 rp rl buf n CV w wt wa ak nv nkv 0 0
      ((nv + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat :=
    tek_of_cyb C7 (by simp) (by simp) (by simp) (by simp) (by simp) ⟨a, b, c, by simp⟩ ⟨pr, by simp, hpl⟩
      ⟨mg, by simp, by simp⟩ ⟨rs, by simp⟩ hnv hnbl hnkv (by simp) (by simp) (by simp) (by simp) (by simp) (by simp)
      (by simp) (by simp) (by simp) (by simp) (by simp) (by simp) (by simp [TeRd2, TeRd])
  refine pt_c8a hQT K7 ?_
  refine pt_c8b hP hQT K7 K7.hm144 K7.hm152 fun v1 v2 hc K8 => ?_
  refine pt_c8c hQT K8 fun En9 S9 th K9 hth hobjth => ?_
  refine hoare_pre (P := PA E En9 (SAd S9 wt wa _ (nv.toNat + 1))) ?_ (fun t _ ht => pa_adopt_te hP.toPtPre K9 hc ht)
  refine pt_c9 hP hQT (adk_of_tek K9) (rdin_of_tek K9) fun En10 S10 wm mg' hmgE hmgS K10 => ?_
  refine pt_c10 hP hQT K10 fun En11 S11 aaw akw K11 haa hak hoa hoak => ?_
  have hL : ∀ p ∈ [(40, mg'), (24, rd E.s0.memory (E.tx + BitVec.ofNat 64 152)), (16, w), (8, wt)], p.1 ≤ 40 ∧ p.1 ≠ 32 ∧ p.1 % 8 = 0 := by
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl <;> norm_num
  refine pt_c11 hP.toPtPre hQT K11 hL haa hak hoa hoak fun En12 S12 v32 v96 v120 K12 haa2 hak2 hoa2 hoak2 hb32 hp120 hd96 htg => ?_
  refine pt_c12 hP.toPtPre K12 hL haa2 hak2 hoa2 hoak2 hb32 hd96 fun S13 K13 hmono => ?_
  exact pt_call hP hOH hcoinR hM hpm hpcm hR hgs K13 (hmono _ hoa2) (hmono _ hoak2) (hmono _ hb32) (hmono _ htg) (hmono _ hp120) (hmono _ hd96)

end InitECandidate.Solver.MemSafe.Ptx
