import InitECandidate.Solver.MemSafe.Ptx.PtT16
import InitECandidate.Solver.MemSafe.HtabEntries.LstPush

/-!
# F3g: the second part of the tail, loop 1 (`lst_push` of the log records into `bo.LOGS`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

theorem lst_not_bk {t : Nat} (h : t ∈ Hooks.lstTys) : t ∉ bkTys := by
  simp only [Hooks.lstTys, List.mem_cons, List.not_mem_nil, or_false] at h
  unfold bkTys blockTys recKTys
  rcases h with rfl | rfl | rfl | rfl | rfl <;> decide

theorem recK_ne {t : Nat} (h : t ∈ recKTys) : t ≠ tBO ∧ t ≠ tBOS := by
  unfold recKTys at h
  simp only [List.mem_cons, List.mem_nil_iff, or_false] at h
  rcases h with rfl | rfl | rfl | rfl <;> exact ⟨by decide, by decide⟩

theorem bk_heap {t : Nat} (h : t ∈ bkTys) : (guestC.ty t).region = .heap := by
  unfold bkTys blockTys recKTys at h
  simp only [List.mem_append, List.mem_cons, List.mem_nil_iff, or_false] at h
  rcases h with (rfl | rfl | rfl) | (rfl | rfl | rfl | rfl) <;> decide

theorem guestSt_bk {t : Nat} (h : t ∈ bkTys) : guestSt t = false :=
  guestSt_blockTys t (keep_bk h)

theorem bk_lt_own {t : Nat} (h : t ∈ bkTys) : t < ownBase := by
  unfold bkTys blockTys recKTys at h
  simp only [List.mem_append, List.mem_cons, List.mem_nil_iff, or_false] at h
  rcases h with (rfl | rfl | rfl) | (rfl | rfl | rfl | rfl) <;> decide

section tb2
variable {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj}

/-- **The core of a call** with an arbitrary footprint `PWx` that misses the kept cells. -/
theorem tl_call_core2 {sg : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PWx : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {vs : List (ValueHOL 64)} {s st : State σ} {callee : Locs} {v : ValueHOL 64} {Γ : Gam} {p : Ptrs}
    (hR : SumRelX guestC (HR σ) sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PWx vs s Γ a) Q vs
      (callEntryStateHOLFinite s callee) (.returned v) st)
    (hgl : ∀ g, cW.contains g = false → st.globals.lookup g = s.globals.lookup g)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hJo : JrOut sg.gw)
    (hZW : ∀ a, Z a → ¬ PWx vs (callEntryStateHOLFinite s callee) Γ a)
    (hr : TlS A ref Z O s Γ p) (hargs : ArgsOK guestC Γ p sg.params vs)
    (hargsY : ∀ a, ArgCells sg.params vs a → ¬ A.Y a)
    (hpre : Pre vs (callEntryStateHOLFinite s callee) Γ) :
    ∃ Γ' p', ∃ _ : SumCore guestC (HR σ) sg
        (fun a => ProtCell guestC Γ a ∧ PWx vs (callEntryStateHOLFinite s callee) Γ a)
        Γ (callEntryStateHOLFinite s callee) vs (.returned v) st Γ' p p',
      TlS A ref Z O { st with locals := s.locals } Γ' p' ∧
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ' := by
  have hre : TlS A ref Z O (callEntryStateHOLFinite s callee) Γ p := tl_loc hr callee (s.clock - 1)
  obtain ⟨Γ', p0', p', hc, hq⟩ := hR (by simp [Good]) (not_abortive_ret v) Γ hre.hG
    ⟨p, hre.hp, hargs⟩ hpre
  obtain rfl : p = p0' := (Option.some.inj (hc.1.symm.trans hre.hp)).symm
  have hrun := tl_core hre hc (fun a ha => argCells_not_prot (tl_ord hr) (tl_layout hr) hargs ha) hargsY
    hZW hgw hJo (hgl)
  exact ⟨Γ', p', hc, tl_loc hrun s.locals st.clock, hq⟩

/-- A kept cell of a block object is no header cell of a list. -/
theorem z_not_lcell {u : State σ} {Γ : Gam} {p : Ptrs} (h : TlS A ref Z O u Γ p)
    (hB : ∀ a, Z a → ∃ o ∈ Γ, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k)
    {L : Obj} (hL : L ∈ Γ) (hLt : L.ty ∈ lstTys) {a : BitVec 64} (ha : Z a) : ¬ LCell L a := by
  obtain ⟨o, ho, hot, k, hk, rfl⟩ := hB a ha
  have hLay := tl_layout h
  have hord := tl_ord h
  intro hlc
  have key : ∀ j, j < 3 → o.cell k = L.cell j → False := fun j hj he => by
    obtain ⟨rfl, -⟩ := cell_inj hord hLay ho hL hk (HtabEntries.lst_slot hLay hL hLt hj) he
    exact lst_not_bk hLt hot
  rcases hlc with he | he | he
  · exact key 0 (by omega) he
  · exact key 1 (by omega) he
  · exact key 2 (by omega) he

end tb2

end InitECandidate.Solver.MemSafe.Ptx
