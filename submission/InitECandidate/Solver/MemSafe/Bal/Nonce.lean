import InitECandidate.Solver.MemSafe.Bal.NonceCode
import InitECandidate.Solver.MemSafe.Bal.Prefix
import InitECandidate.Solver.MemSafe.Bal.CodeChange

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

section nc
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- The loop state: everything as in `u0`, but `i`. -/
def NL (u0 : State σ) (L0 : Obj) (ADDR AD IDX NN : BitVec 64) (u : State σ) : Prop :=
  u.memory = u0.memory ∧ u.globals = u0.globals ∧ u.memaddrs = u0.memaddrs ∧ u.be = u0.be ∧
  u.locals.lookup (nm "addr") = some (.val (.word ADDR)) ∧
  u.locals.lookup (nm "ad") = some (.val (.word AD)) ∧
  u.locals.lookup (nm "idx") = some (.val (.word IDX)) ∧
  u.locals.lookup (nm "new_nonce") = some (.val (.word NN)) ∧
  u.locals.lookup (nm "l") = some (.val (.word L0.base)) ∧
  u.locals.lookup (nm "n") = some (.val (.word (lN u0.memory L0))) ∧
  u.locals.lookup (nm "p") = some (.val (.word (lP u0.memory L0))) ∧
  ∃ I : BitVec 64, u.locals.lookup (nm "i") = some (.val (.word I)) ∧
    I.toNat ≤ (lN u0.memory L0).toNat

theorem nc_loop (hord0 : p0.Ordered) (hL0' : Layout guestC p0 Γ0)
    {u0 : State σ} {Γ1 : Gam}
    (hT1 : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ1 u0)
    (hb0 : u0.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts"))
    {L0 : Obj} (hL0 : L0 ∈ Γ1) (hLt : L0.ty ∈ lstTys) (hE : lstE L0.ty = 16)
    {ADDR AD IDX NN : BitVec 64} :
    Hoare σ guestCtx (NL u0 L0 ADDR AD IDX NN) ncLoop (fun r t =>
      (r = none ∧ NL u0 L0 ADDR AD IDX NN t) ∨
      ((∃ v, r = some (.returned v)) ∧ BcQ Γ0 s0 p0 r t)) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  have hG1 := Struct.trk_G hT1
  obtain ⟨hE0, hE8, hE64⟩ := lstE_pos _ hLt
  obtain ⟨x, hx, hxt, hxb, hxs, hnc, hhi⟩ := lst_arr lstHooks_guestR hG1 hL0 hLt
  have hN32 := lu_small lstHooks_guestR hG1 hL0 hLt
  unfold ncLoop
  refine hoare_while (I := NL u0 L0 ADDR AD IDX NN) (fun s h => h) ?_ (fun s _ h _ => Or.inl ⟨rfl, h⟩)
  refine hoare_seq (R := fun r t => (r = none ∧ NL u0 L0 ADDR AD IDX NN t ∧ ∃ I : BitVec 64,
      t.locals.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat < (lN u0.memory L0).toNat) ∨
      ((∃ v, r = some (.returned v)) ∧ BcQ Γ0 s0 p0 r t)) ?_ ?_ ?_
  · refine hoare_ite ?_ ?_
    · -- a hit: maybe raise the nonce, then return
      have hbd : ∀ t : State σ, ∀ I : BitVec 64, NL u0 L0 ADDR AD IDX NN t →
          t.locals.lookup (nm "i") = some (.val (.word I)) → I.toNat < (lN u0.memory L0).toNat →
          x.HasSlot (I.toNat * 2) ∧ 8 * (I.toNat * 2) + 16 ≤ x.size ∧
            ev t ncEl8 = some (.val (.word (x.cell (I.toNat * 2 + 1)))) := by
        intro t I hI hi hlt
        obtain ⟨hm, hg, hma, hbe, hla, had, hli, hnn, hl, hn, hpp, I', hi', hIN⟩ := hI
        have hII : I' = I := by simpa using hi'.symm.trans hi
        subst hII
        obtain ⟨h1, h2, h3⟩ := lst_elem hE8 hE0 hE64 hxs hhi (I := I') (cap := (lC u0.memory L0).toNat)
          (by omega)
        rw [hE] at h1 h2 h3
        refine ⟨by simpa using h1, by simpa using h2, ?_⟩
        unfold ncEl8
        rw [ev_add3 (Mpt.Leaves.ev_lv' hpp) (ev_mul2 (Mpt.Leaves.ev_lv' hi) (ev_cw _ 16)) (ev_cw _ 8)]
        have hc8 : x.cell (I'.toNat * 2) + 8#64 = x.cell (I'.toNat * 2 + 1) := cell_add x (I'.toNat * 2) 1
        have h3' : x.base + I' * 16#64 = x.cell (I'.toNat * 2) := h3
        rw [← hxb, ← BitVec.add_assoc, h3', hc8]
      refine hoare_seq (R := fun r t => r = none ∧
          t.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts") ∧
          ∃ Γ', Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ' t) ?_
        (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoare_ite ?_ ?_
        · refine hoare_store fun t _ ⟨⟨⟨hI, hc⟩, c1⟩, c2⟩ w v mem hw hv hmem => ?_
          have hI0 := hI
          obtain ⟨hm, hg, hma, hbe, hla, had, hli, hnn, hl, hn, hpp, I, hi, hIN⟩ := hI
          obtain ⟨w', hw', hne'⟩ := hc
          obtain ⟨a1, b1, ha1, hb1, hlt⟩ := cmp_true hw' hne'
          rw [Mpt.Leaves.ev_lv' hi] at ha1
          rw [Mpt.Leaves.ev_lv' hn] at hb1
          cases ha1; cases hb1
          have hlt' : I.toNat < (lN u0.memory L0).toNat :=
            (lt_signed (by omega) (by omega)).1 hlt
          obtain ⟨hs1, hs2, hev⟩ := hbd t I hI0 hi hlt'
          rw [hev] at hw
          cases hw
          rw [Mpt.Leaves.ev_lv' hnn] at hv
          cases hv
          have hTt := Struct.trk_congr hH hT1 hm hg hma hbe
          have hmem' : @panMemStoresHOL 64 _ (x.cell (I.toNat * 2 + 1)) (flattenHOL (ValueHOL.val (.word NN)))
              t.memaddrs (fun y => Classical.propDecidable (t.memaddrs y)) t.memory = some mem := hmem
          have hT' := trk_wordsA hH lstHooks_guestR hTt hx hxt (k := I.toNat * 2 + 1) (n := 1) (by omega)
            (vals := flattenHOL (ValueHOL.val (.word NN))) (by simp [flattenHOL]) hmem'
            (fun j hj => pw_of_la hord0 hL0' hTt ⟨x, hx, I.toNat * 2 + 1 + j, by unfold Obj.HasSlot; omega,
              lstA_prot hxt _, rfl⟩ (Or.inr ⟨x, hx, hxt, I.toNat * 2 + 1 + j, by unfold Obj.HasSlot; omega, rfl⟩))
          refine ⟨rfl, ?_, Γ1, hT'⟩
          show t.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts")
          rw [hg]; exact hb0
        · refine hoare_skip fun t _ ⟨⟨⟨hI, hc⟩, c1⟩, hfalse⟩ => ?_
          obtain ⟨hm, hg, hma, hbe, hla, had, hli, hnn, hl, hn, hpp, I, hi, hIN⟩ := hI
          refine ⟨rfl, ?_, Γ1, Struct.trk_congr hH hT1 hm hg hma hbe⟩
          rw [hg]; exact hb0
      · refine hoare_return fun t _ ⟨ht, hb, Γ, hT⟩ v' hv' => ?_
        refine Or.inr ⟨⟨_, rfl⟩, fun v'' hv'' => ?_⟩
        cases hv''
        exact ⟨hb, Γ, Struct.trk_congr hH hT rfl rfl rfl rfl⟩
    · refine hoare_skip fun t _ ⟨⟨hI, hc⟩, hfalse⟩ => ?_
      obtain ⟨hm, hg, hma, hbe, hla, had, hli, hnn, hl, hn, hpp, I, hi, hIN⟩ := hI
      obtain ⟨w', hw', hne'⟩ := hc
      obtain ⟨a1, b1, ha1, hb1, hlt⟩ := cmp_true hw' hne'
      rw [Mpt.Leaves.ev_lv' hi] at ha1
      rw [Mpt.Leaves.ev_lv' hn] at hb1
      cases ha1; cases hb1
      have hlt' : I.toNat < (lN u0.memory L0).toNat :=
        (lt_signed (by omega) (by omega)).1 hlt
      exact Or.inl ⟨rfl, ⟨hm, hg, hma, hbe, hla, had, hli, hnn, hl, hn, hpp, I, hi, hIN⟩, I, hi, hlt'⟩
  · intro r t _ hr _ h
    rcases h with ⟨h, -⟩ | ⟨⟨v, hv⟩, hq⟩
    · exact absurd h hr
    · subst hv
      refine ⟨fun h' => (by cases h'), fun h' => (by cases h'), fun h' => (by cases h'), fun v' h' => ?_⟩
      cases h'
      exact Or.inr ⟨⟨v, rfl⟩, hq⟩
  · refine hoare_assign fun t _ hR w hw _ => ?_
    rcases hR with ⟨-, hI, I, hi, hlt⟩ | ⟨⟨v, hv⟩, -⟩
    · obtain ⟨hm, hg, hma, hbe, hla, had, hli, hnn, hl, hn, hpp, I', hi', hIN⟩ := hI
      have hII : I = I' := by
        have := hi.symm.trans hi'
        simpa using this
      subst hII
      rw [ev_add2 (Mpt.Leaves.ev_lv' hi') (ev_cw _ 1)] at hw
      cases hw
      have h1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := toNat_add1 (by omega)
      refine ⟨fun _ => ⟨hm, hg, hma, hbe, ?_, ?_, ?_, ?_, ?_, ?_, ?_, _, lk_set_self _ _ _, by rw [h1]; omega⟩,
        fun h' => (by cases h'), fun h' => (by cases h'), fun v' h' => (by cases h')⟩
      all_goals first
        | (rw [lk_set_ne _ _ (by decide)]; assumption)
    · cases hv

/-- After the push: `e` is the first slot of a fresh 16-byte element of the list array `x`. -/
def NS (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) (Γ : Gam) (x : Obj) (k : Nat) (IDX NN : BitVec 64)
    (t : State σ) : Prop :=
  Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ t ∧
  t.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts") ∧
  t.locals.lookup (nm "e") = some (.val (.word (x.cell k))) ∧
  t.locals.lookup (nm "idx") = some (.val (.word IDX)) ∧
  t.locals.lookup (nm "new_nonce") = some (.val (.word NN)) ∧
  x ∈ Γ ∧ IsLstA x.ty ∧ x.HasSlot k ∧ 8 * k + 16 ≤ x.size

theorem ns_st0 (hord0 : p0.Ordered) (hL0' : Layout guestC p0 Γ0) {Γ : Gam} {x : Obj} {k : Nat}
    {IDX NN : BitVec 64} :
    Hoare σ guestCtx (NS s0 Γ0 p0 Γ x k IDX NN) (.store (lv (nm "e")) (lv (nm "idx")))
      (fun r t => r = none ∧ NS s0 Γ0 p0 Γ x k IDX NN t) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine hoare_store fun t _ ⟨hT, hb, he, hix, hnn, hx, hxt, hk, hsz⟩ w v mem hw hv hmem => ?_
  rw [Mpt.Leaves.ev_lv' he] at hw
  cases hw
  rw [Mpt.Leaves.ev_lv' hix] at hv
  cases hv
  have hT' := trk_wordsA hH lstHooks_guestR hT hx hxt (k := k) (n := 1) (by omega)
    (vals := flattenHOL (ValueHOL.val (.word IDX))) (by simp [flattenHOL]) hmem
    (fun j hj => pw_of_la hord0 hL0' hT ⟨x, hx, k + j, by unfold Obj.HasSlot; omega,
      lstA_prot hxt _, rfl⟩ (Or.inr ⟨x, hx, hxt, k + j, by unfold Obj.HasSlot; omega, rfl⟩))
  exact ⟨rfl, hT', hb, he, hix, hnn, hx, hxt, hk, hsz⟩

theorem ns_st1 (hord0 : p0.Ordered) (hL0' : Layout guestC p0 Γ0) {Γ : Gam} {x : Obj} {k : Nat}
    {IDX NN : BitVec 64} :
    Hoare σ guestCtx (NS s0 Γ0 p0 Γ x k IDX NN)
      (.store (.op .add [lv (nm "e"), cw 8]) (lv (nm "new_nonce")))
      (fun r t => r = none ∧ NS s0 Γ0 p0 Γ x k IDX NN t) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine hoare_store fun t _ ⟨hT, hb, he, hix, hnn, hx, hxt, hk, hsz⟩ w v mem hw hv hmem => ?_
  rw [ev_add2 (Mpt.Leaves.ev_lv' he) (ev_cw _ 8)] at hw
  cases hw
  rw [Mpt.Leaves.ev_lv' hnn] at hv
  cases hv
  have hcell : x.cell k + BitVec.ofNat 64 8 = x.cell (k + 1) := cell_add x k 1
  rw [hcell] at hmem
  have hT' := trk_wordsA hH lstHooks_guestR hT hx hxt (k := k + 1) (n := 1) (by omega)
    (vals := flattenHOL (ValueHOL.val (.word NN))) (by simp [flattenHOL]) hmem
    (fun j hj => pw_of_la hord0 hL0' hT ⟨x, hx, k + 1 + j, by unfold Obj.HasSlot; omega,
      lstA_prot hxt _, rfl⟩ (Or.inr ⟨x, hx, hxt, k + 1 + j, by unfold Obj.HasSlot; omega, rfl⟩))
  exact ⟨rfl, hT', hb, he, hix, hnn, hx, hxt, hk, hsz⟩

theorem ns_ret :
    Hoare σ guestCtx (fun t => ∃ Γ x k IDX NN, NS s0 Γ0 p0 Γ x k IDX NN t) (.return (cw 0)) (BcQ Γ0 s0 p0) :=
  hoare_pre (ret_bcQ (Rec.foldOK_guestR (σ := σ)).hH) fun t _ ⟨Γ, x, k, IDX, NN, hT, hb, _⟩ => ⟨hb, Γ, hT⟩

/-- The tail: push, store the index and the nonce. -/
theorem nc_tail (hord0 : p0.Ordered) (hL0' : Layout guestC p0 Γ0)
    {u0 : State σ} {Γ1 : Gam}
    (hT1 : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ1 u0)
    (hb0 : u0.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts"))
    {L0 : Obj} (hL0 : L0 ∈ Γ1) (hLt : L0.ty ∈ lstTys) (hE : lstE L0.ty = 16)
    {ADDR AD IDX NN : BitVec 64} :
    Hoare σ guestCtx (NL u0 L0 ADDR AD IDX NN) ncTail (BcQ Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  have hG1 := Struct.trk_G hT1
  unfold ncTail
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (sumRel_fun (sumSpec_lst_push (σ := σ) (X := guestCtx)
    (H := guestHooksR) hF guestHooksR_mono lstHooks_guestR)) (FunSpec.and (Frames.funSpec_dom _)
    (funSpec_bal_gw hF.hX (g := nm "bal_accounts") (by simp) (f := nm "lst_push") (by decide_cbv))))
    (bcQ_locals hH) fun s _ hI vs hvs callee v st ⟨hRel, ⟨hd, hbe⟩, hgw⟩ _ hsh => ?_
  obtain ⟨w, rfl⟩ := val_of_shape1 hsh
  obtain ⟨hm, hg, hma, hbe0, hla, had, hli, hnn, hl, hn, hpp, I, hi, hIN⟩ := hI
  obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
  rw [evs_nil] at hr2
  cases hr2
  rw [Mpt.Leaves.ev_lv' hl] at ha1
  rw [ev_cw] at ha2
  cases ha1; cases ha2
  have hTs : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ1 s :=
    Struct.trk_congr hH hT1 hm hg hma hbe0
  have hGe : G guestC (guestHooksR (σ := σ)) Γ1 (callEntryStateHOLFinite s callee) :=
    Struct.G_congr (s := u0) hH hm hg hma hbe0 hG1
  obtain ⟨pT, hpT, -⟩ := id hTs
  have hGs := Struct.trk_G hTs
  obtain ⟨Γ2, q1, q2, hc, hq, hT2⟩ := call_cs hH hTs hord0 hL0' (sg := lpSigA) (Pre := LpPre)
    (PW' := LpPW) (Q := LpPost)
    (vs := [.val (.word L0.base), .val (.word (BitVec.ofNat 64 16))]) (r := .returned (.val (.word w)))
    (callee := callee) (st := st) hRel (by simp [Good]) (by simp [Abortive]) ⟨pT, hpT, Inc.argsOK_any2⟩
    ⟨L0, hL0, hLt, by rw [hE]⟩ (fun g _ => by simp [lpSigA])
    (fun y hy => absurd hy Inc.argCells_any2)
    (fun a hpc ⟨L', hL', hL't, _, hcl⟩ => pw_of_la hord0 hL0' hTs hpc (Or.inl ⟨L', hL', hL't, hcl⟩)) hd hbe
  obtain ⟨L', hL', hL't, hL'b, hR⟩ := hq _ rfl
  obtain ⟨qs, hqs, hords, hLays, -⟩ := hGs
  have hLL : L0 = L' := by
    have hb : L0.base = L'.base := by
      simp only [List.getElem?_cons_zero, Option.some.injEq, ValueHOL.val.injEq,
        HolWordLab.word.injEq] at hL'b
      exact hL'b
    exact base_eq (gamOK_of_layout hLays) hL' hL0 hb
  subst hLL
  obtain ⟨w', hw', x, hx, hxt, k, hxk, hwk, hxe⟩ := lpR_slotE hR.1 (Struct.trk_G hT2) hLt
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw'
  subst hw'
  subst hwk
  rw [hE] at hxe
  have hT3 : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ2
      (setVarHOLFinite (nm "e") (.val (.word (x.cell k))) { st with locals := s.locals }) :=
    Struct.trk_congr hH hT2 rfl rfl rfl rfl
  refine hoare_seq (R := fun r t => r = none ∧ NS s0 Γ0 p0 Γ2 x k IDX NN t)
    (hoare_pre (ns_st0 hord0 hL0') fun t _ ht => ?_) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · subst ht
    refine ⟨hT3, ?_, lk_set_self _ _ _, ?_, ?_, hx, hxt, hxk, hxe⟩
    · show st.globals.lookup (nm "bal_accounts") = _
      rw [hgw]
      show s.globals.lookup (nm "bal_accounts") = _
      rw [hg]; exact hb0
    · rw [lk_set_ne _ _ (by decide)]; exact hli
    · rw [lk_set_ne _ _ (by decide)]; exact hnn
  refine hoare_seq (R := fun r t => r = none ∧ NS s0 Γ0 p0 Γ2 x k IDX NN t)
    (hoare_pre (ns_st1 hord0 hL0') fun t _ h => h.2) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  exact hoare_pre ns_ret fun t _ h => ⟨_, _, _, _, _, h.2⟩

theorem nc_rest (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {ADDR AD IDX NN : BitVec 64} :
    Hoare σ guestCtx (AdS s0 Γ0 p0 ADDR AD [(nm "idx", .val (.word IDX)), (nm "new_nonce", .val (.word NN))]
      (fun _ => True)) ncRest (BcQ Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  obtain ⟨q0, hq0, hord0, hL0', -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  unfold ncRest
  refine Mpt.Leaves.hoare_decL (bcQ_locals hH) fun u _ hu v hv _ => ?_
  obtain ⟨hla, hXl, hlad, Γ1, hT1, hb, hkey, hkp, o, ho, hob, hot⟩ := hu
  have hidx : u.locals.lookup (nm "idx") = some (.val (.word IDX)) := hXl _ (List.mem_cons_self ..)
  have hnn : u.locals.lookup (nm "new_nonce") = some (.val (.word NN)) :=
    hXl _ (List.mem_cons_of_mem _ (List.mem_cons_self ..))
  have hv' := lp_ev_ld (ev_add2 (lp_ev_lv hlad) (ev_cw _ 24)) hv
  have hT1' := hT1
  obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := hT1'
  have hGT' := hGT
  obtain ⟨qT, hqT, hordT, hLayT, hFlT, -⟩ := hGT
  rw [hpT] at hqT
  cases hqT
  have hsz : 8 * 3 + 8 ≤ o.size := by
    have := (hLayT.1 o ho).2.2.2.1
    rw [hot] at this
    have h40 : (guestC.ty tAD).minSz = 40 := by decide
    omega
  have hfit := hFlT o ho 3 hsz
  rw [hot, show (guestC.ty tAD) = adTy from rfl] at hfit
  have hs3 : adTy.slot 3 = .ptr tLSTn := by decide
  rw [hs3] at hfit
  obtain ⟨L, hL, hLb, hLt⟩ := hfit
  have hcell : o.cell 3 = AD + BitVec.ofNat 64 24 := by unfold Obj.cell; rw [hob]
  rw [hcell] at hLb
  rw [← hLb] at hv'
  subst hv'
  have hE : lstE L.ty = 16 := by rw [hLt]; decide
  have hLl : L.ty ∈ lstTys := by rw [hLt]; decide
  refine Mpt.Leaves.hoare_decL (bcQ_locals hH) fun u1 _ hu1 v2 hv2 _ => ?_
  subst hu1
  have hl1 : (setVarHOLFinite (nm "l") (.val (.word L.base)) u).locals.lookup (nm "l")
      = some (.val (.word L.base)) := lk_set_self _ _ _
  have hv2' := lp_ev_ld (ev_add2 (lp_ev_lv hl1) (ev_cw _ 8)) hv2
  subst hv2'
  refine Mpt.Leaves.hoare_decL (bcQ_locals hH) fun u2 _ hu2 v3 hv3 _ => ?_
  subst hu2
  have hl2 : (setVarHOLFinite (nm "n") (.val (.word (rd u.memory (L.base + BitVec.ofNat 64 8))))
      (setVarHOLFinite (nm "l") (.val (.word L.base)) u)).locals.lookup (nm "l")
      = some (.val (.word L.base)) := (lk_set_ne _ _ (by decide)).trans hl1
  have hv3' := lp_ev_ld (ev_add2 (lp_ev_lv hl2) (ev_cw _ 0)) hv3
  subst hv3'
  refine Mpt.Leaves.hoare_decL (bcQ_locals hH) fun u3 _ hu3 v4 hv4 _ => ?_
  subst hu3
  rw [ev_cw] at hv4
  cases hv4
  have hN : rd u.memory (L.base + BitVec.ofNat 64 8) = lN u.memory L := rfl
  have hP : rd u.memory (L.base + BitVec.ofNat 64 0) = lP u.memory L := rfl
  refine hoare_seq (R := fun r t => (r = none ∧ NL u L ADDR AD IDX NN t) ∨
      ((∃ v, r = some (.returned v)) ∧ BcQ Γ0 s0 p0 r t)) ?_ ?_ ?_
  · refine hoare_pre (nc_loop hord0 hL0' hT1 hb hL hLl hE) fun t _ ht => ?_
    subst ht
    refine ⟨rfl, rfl, rfl, rfl, ?_, ?_, ?_, ?_, ?_, ?_, ?_, _, lk_set_self _ _ _, by simp⟩
    · simp only [lk_set_ne _ _ (show nm "i" ≠ nm "addr" by decide),
        lk_set_ne _ _ (show nm "p" ≠ nm "addr" by decide), lk_set_ne _ _ (show nm "n" ≠ nm "addr" by decide),
        lk_set_ne _ _ (show nm "l" ≠ nm "addr" by decide)]
      exact hla
    · simp only [lk_set_ne _ _ (show nm "i" ≠ nm "ad" by decide),
        lk_set_ne _ _ (show nm "p" ≠ nm "ad" by decide), lk_set_ne _ _ (show nm "n" ≠ nm "ad" by decide),
        lk_set_ne _ _ (show nm "l" ≠ nm "ad" by decide)]
      exact hlad
    · simp only [lk_set_ne _ _ (show nm "i" ≠ nm "idx" by decide),
        lk_set_ne _ _ (show nm "p" ≠ nm "idx" by decide), lk_set_ne _ _ (show nm "n" ≠ nm "idx" by decide),
        lk_set_ne _ _ (show nm "l" ≠ nm "idx" by decide)]
      exact hidx
    · simp only [lk_set_ne _ _ (show nm "i" ≠ nm "new_nonce" by decide),
        lk_set_ne _ _ (show nm "p" ≠ nm "new_nonce" by decide), lk_set_ne _ _ (show nm "n" ≠ nm "new_nonce" by decide),
        lk_set_ne _ _ (show nm "l" ≠ nm "new_nonce" by decide)]
      exact hnn
    · simp only [lk_set_ne _ _ (show nm "i" ≠ nm "l" by decide),
        lk_set_ne _ _ (show nm "p" ≠ nm "l" by decide), lk_set_ne _ _ (show nm "n" ≠ nm "l" by decide)]
      exact lk_set_self _ _ _
    · rw [← hN]
      simp only [lk_set_ne _ _ (show nm "i" ≠ nm "n" by decide), lk_set_ne _ _ (show nm "p" ≠ nm "n" by decide)]
      exact lk_set_self _ _ _
    · rw [← hP]
      simp only [lk_set_ne _ _ (show nm "i" ≠ nm "p" by decide)]
      exact lk_set_self _ _ _
  · intro r t _ hr _ h
    rcases h with ⟨h, -⟩ | ⟨-, hq⟩
    · exact absurd h hr
    · exact hq
  · refine hoare_pre (nc_tail hord0 hL0' hT1 hb hL hLl hE (ADDR := ADDR) (AD := AD) (IDX := IDX) (NN := NN))
      fun t _ h => ?_
    rcases h with ⟨-, h⟩ | ⟨⟨v, hv⟩, -⟩
    · exact h
    · cases hv

def NcPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ ADDR IDX NN : BitVec 64, vs = [.val (.word ADDR), .val (.word IDX), .val (.word NN)] ∧
    BalNN s Γ ∧ SrcKey Γ ADDR 20 tHTd20

def ncSig : Sig := ⟨[.any, .any, .any], [], [], true⟩

/-- **`add_nonce_change(addr, idx, new_nonce)`**. -/
theorem sumSpec_add_nonce_change :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) (nm "add_nonce_change") ncSig NcPre
      (fun _ s Γ a => BalPW s Γ a) BalPost := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  refine sumSpecA_of_returns (noExc_add_nonce_change hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, C', rfl, sa, sb, sc, hA, hB, hC⟩ :=
    Spec.lookupCode_three code_add_nonce_change (by decide) (by decide) (by decide) hl'
  obtain ⟨ADDR, IDX, NN, hvs, ⟨T0, hT0, hT0t, hbal⟩, hkey⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  obtain ⟨p0, hp0, -⟩ := hargs
  have hbal0 : gword s0 (nm "bal_accounts") = some T0.base := hbal
  have hBS : BS s0 Γ0 p0 ADDR [(nm "idx", .val (.word IDX)), (nm "new_nonce", .val (.word NN))]
      (fun _ => True) s0 := by
    refine ⟨by rw [hloc]; exact hA, ?_, Γ0, Struct.trk_refl hG0 hp0, rfl, hkey, trivial⟩
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl
    · rw [hloc]; exact hB
    · rw [hloc]; exact hC
  have H' : Hoare σ guestCtx (fun u => u = s0) ncBody (BcQ Γ0 s0 p0) := by
    unfold ncBody
    refine hoare_pre (bal_prefix0 hG0 hp0 hT0 hT0t hbal0
      (Xs := [(nm "idx", .val (.word IDX)), (nm "new_nonce", .val (.word NN))])
      (by
        intro p hp
        simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
        rcases hp with rfl | rfl
        · exact ⟨(by decide : nm "idx" ≠ nm "ad"), (by decide : nm "idx" ≠ nm "e")⟩
        · exact ⟨(by decide : nm "new_nonce" ≠ nm "ad"), (by decide : nm "new_nonce" ≠ nm "e")⟩)
      (KP := fun _ => True) (fun _ _ _ h => h) (bcQ_locals hH)
      (fun AD => nc_rest hG0 hp0 (AD := AD))) (fun u _ hu => by rw [hu]; exact hBS)
  have H2 := H' s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H2
  obtain ⟨hbl, Γ', hT⟩ := H2 v rfl
  obtain ⟨p', hc⟩ := sumCore_of_bc (sg := ncSig) rfl rfl hp0 hT (vs := [.val (.word ADDR), .val (.word IDX),
    .val (.word NN)]) (r := r)
  refine ⟨Γ', p0, p', hc, fun v' hv' => ?_⟩
  rw [hv] at hv'
  cases hv'
  exact hbl

end nc

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_add_nonce_change
