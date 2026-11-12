import InitECandidate.Solver.MemSafe.Trie.CsrFrame
import InitECandidate.Solver.MemSafe.Trie.CsrCode

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# `compute_state_root`: the first loop (storage tries)
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

theorem gamOK_of_G {C : Cfg} {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G C H Γ s) (hC : C = Types.guestC) : GamOK Γ := by
  subst hC
  obtain ⟨p, hp, hord, hL, -⟩ := id hG
  exact gamOK_of_layout hL

/-- The typed tables and the node DB root. -/
def TB (C NR SW AW : BitVec 64) (Γ : Gam) : Prop :=
  Fits Γ (.ptr Types.tHTb20) C ∧ Fits Γ (.ptr Types.tHTh20) NR ∧ Fits Γ (.ptr Types.tHTbt20) SW ∧
    Fits Γ (.ptr Types.tHTb20) AW

theorem tb_ext {C NR SW AW : BitVec 64} {Γ Γ' : Gam} (he : Ext Γ Γ') (h : TB C NR SW AW Γ) :
    TB C NR SW AW Γ' :=
  ⟨fits_ext he h.1, fits_ext he h.2.1, fits_ext he h.2.2.1, fits_ext he h.2.2.2⟩

/-- The node DB of `ws`: the word `ND` is slot 0 of a `tWSR` object. -/
def NDK (ND : BitVec 64) (Γ : Gam) (mm : Mem) : Prop :=
  ∃ ow ∈ Γ, ow.ty = Types.tWSR ∧ ND = rd mm ow.base

theorem wsr_slot0 : (Types.guestC.ty Types.tWSR).slot 0 = .prot := by decide

theorem ndk_call {a : Act σ} (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC) {sg' : Sig} {cs : List Cap}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q : Ptrs} {s st : State σ}
    (hcs : CapsAvoid cs Types.tWSR) (hMod : Mod a sg' cs vs Γ q s st) (hExt : Ext Γ Γ')
    (hh : Heap a Γ q s) (hargs : ∀ y, ArgCells sg'.params vs y → ¬ InObj Γ y.toNat)
    {ND : BitVec 64} (h : NDK ND Γ s.memory) : NDK ND Γ' st.memory := by
  obtain ⟨ow, how, hty, hND⟩ := h
  have hord := heap_ord hh
  have hL : Layout Types.guestC q Γ := layout_of_heap haC hh
  have hk : ow.HasSlot 0 := by
    have := (hL.1 ow how).2.2.2.1
    rw [hty, Types.ty_WSR] at this
    unfold Obj.HasSlot
    have h40 : (Types.wsrTy).minSz = 40 := by decide
    omega
  have hkeep := prot_keep hCb hMod how hk (by rw [hty]; exact wsr_slot0) (by rw [hty]; exact hcs) hargs hord hL
  obtain ⟨ow', how', hb, ht, -⟩ := hExt ow how
  refine ⟨ow', how', by rw [ht]; exact hty, ?_⟩
  have e0 : ow.cell 0 = ow.base := by simp [Obj.cell]
  rw [e0] at hkeep
  rw [hND, ← hb]
  unfold rd
  rw [hb, hkeep]

/-- The invariant of the inner part of the first loop: tables, node DB, the `mpt` handle `M` and the value
buffer `VB` (96 bytes, allocated after the handle). -/
def IA (a : Act σ) (K : Gam → Prop) (C NR SW AW ND M VB : BitVec 64) (Γ : Gam) (q : Ptrs) (mm : Mem) : Prop :=
  TB C NR SW AW Γ ∧ NDK ND Γ mm ∧ HRecU a.p0 Γ q mm M ∧ FBlk a.p0 VB 96 Γ q ∧ M.toNat + 16 ≤ VB.toNat ∧ K Γ

/-- `IA` across a call that writes only outside the handle and the protected cells. -/
theorem ia_call {a : Act σ} (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ') {sg' : Sig} {cs : List Cap}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {C NR SW AW ND M VB : BitVec 64}
    (hcs : CapsAvoid cs Types.tWSR) (hMod : Mod a sg' cs vs Γ q s st) (hExt : Ext Γ Γ')
    (hnf : NewFresh Γ Γ' q q') (hmo : q.Mono q') (hh : Heap a Γ q s) (hh' : Heap a Γ' q' st)
    (hargs : ∀ y, ArgCells sg'.params vs y → ¬ InObj Γ y.toNat ∧ y.toNat ≠ M.toNat ∧ y.toNat ≠ M.toNat + 8)
    (hIA : IA a K C NR SW AW ND M VB Γ q s.memory) : IA a K C NR SW AW ND M VB Γ' q' st.memory := by
  obtain ⟨hTB, hND, hHR, hFB, hMV, hKΓ⟩ := hIA
  have hord := heap_ord hh
  have hord' := heap_ord hh'
  have hL : Layout Types.guestC q Γ := layout_of_heap haC hh
  have hqe := hord.2.1
  exact ⟨tb_ext hExt hTB, ndk_call haC hCb hcs hMod hExt hh (fun y hy => (hargs y hy).1) hND,
    ⟨hrec_call hCb hMod hExt hnf hmo hord hord' hL hHR.1 (fun y hy => ⟨(hargs y hy).2.1, (hargs y hy).2.2⟩), hHR.2⟩,
    fblk_persist_g hFB hord hord' hnf hmo, hMV, hK _ _ hExt (gamOK_of_layout (layout_of_heap haC hh')) hKΓ⟩

/-! ## Table entries of the callees -/

theorem u256min_R :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "u256_to_be_min")
      ⟨[.any, .buf 32], [], [], false⟩ [] := ctab% Rec.tab26_guestR

theorem rlpEB_R :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "rlp_encode_bytes")
      ⟨[.bufArg 2 1 9, .any, .any], [], [], false⟩ [] := ctab% Rec.tab26_guestR

theorem zero_R :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "u256_is_zero")
      ⟨[.any], [], [], false⟩ [] := ctab% Rec.tab26_guestR

theorem item_R :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "htab_item")
      ⟨[.any, .any], [], [], false⟩ [] := ctab% Rec.tab26_guestR

theorem has_R :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "htab_has")
      ⟨[.any, .any], [], [], false⟩ [] := ctab% Rec.tab26_guestR

theorem get_R :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "htab_get")
      ⟨[.any, .any], [], [], false⟩ [] := ctab% Rec.tab26_guestR

theorem wsroot_R :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_storage_root_of")
      ⟨[.any], [], [], false⟩ [] := ctab% Rec.tab26_guestR

theorem wsacct_R :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_get_account_optional")
      ⟨[.any], [], [], false⟩ [] := ctab% Rec.tab26_guestR

theorem croot_R :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "cache_get_root")
      ⟨[.any, .any], [], [], false⟩ [] := ctab% Rec.tab26_guestR

end InitECandidate.Solver.MemSafe.Trie
