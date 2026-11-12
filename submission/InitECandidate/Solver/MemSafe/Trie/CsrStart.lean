import InitECandidate.Solver.MemSafe.Trie.CsrLoopC

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# `compute_state_root`: reading the block state and the node DB

* `gp_decG`: `var x = e; k` where the facts about the value come from the heap state.
* `glob_slot`, `glob_slot_fits`: a word loaded from a record global is a field of a `Γ` object.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem gp_decG {a : Act σ} (hH : HooksLawful a.C a.H) {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {L L2 L3 : LocalsH → Prop} {E E2 : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop}
    (h : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s guestCtx → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ v, ev s e = some v →
      L1 v (setVarHOLFinite x v s).locals ∧ E1 v Γ q s.memory)
    (hk : ∀ v, HoareG σ guestCtx (GI a (L1 v) (E1 v)) body (GP a L2 E2 Rv))
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (x, m0.lookup x))) :
    HoareG σ guestCtx (GI a L E) (.dec x sh e body) (GP a L3 E2 Rv) := by
  refine hoareG_dec fun s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ v hv _ => ?_
  obtain ⟨hL1, hE1⟩ := h s Γ q hs hL hh hE v hv
  refine hoareG_conseq (hk v) (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht
    exact ⟨hL1, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hsc, hE1⟩
  · refine ⟨fun hr => ?_, fun r' hr' => gx_locals hH _ (hq.2 r' hr')⟩
    have hg := hq.1 hr
    exact gi_locals hH _ (hres s.locals t.locals hL hg.1) hg

theorem glob_slot {a : Act σ} (haC : a.C = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ))
    {Γ : Gam} {q : Ptrs} {s : State σ} (hh : Heap a Γ q s) (hs : InCtx s guestCtx) {g : MlS} {t : Nat}
    (hGT : Types.guestC.GT.lookup g = some (.nptr t)) {k : Nat} (hk : k < 2 ^ 20) {v : ValueHOL 64}
    (hv : ev s (.load .one (.op .add [.var .global g, cw k])) = some v) :
    ∃ o ∈ Γ, o.ty = t ∧ v = .val (.word (rd s.memory (o.base + BitVec.ofNat 64 k))) := by
  obtain ⟨w, hw, hnn, rfl⟩ := glob_load hs hk hv
  have hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s := by
    have := hh.1
    rwa [haC, haH] at this
  obtain ⟨o, ho, hob, hot⟩ := glob_obj hG hGT hw hnn
  exact ⟨o, ho, hot, by rw [hob]⟩

theorem glob_slot_fits {a : Act σ} (haC : a.C = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ))
    {Γ : Gam} {q : Ptrs} {s : State σ} (hh : Heap a Γ q s) (hs : InCtx s guestCtx) {g : MlS} {t : Nat}
    (hGT : Types.guestC.GT.lookup g = some (.nptr t)) {j : Nat} (hj : 8 * j < 2 ^ 20)
    (hslot : (Types.guestC.ty t).slot j ≠ .prot) (hsz : 8 * j + 8 ≤ (Types.guestC.ty t).minSz)
    {v : ValueHOL 64}
    (hv : ev s (.load .one (.op .add [.var .global g, cw (8 * j)])) = some v) :
    ∃ W : BitVec 64, v = .val (.word W) ∧ Fits Γ ((Types.guestC.ty t).slot j) W := by
  obtain ⟨o, ho, hot, rfl⟩ := glob_slot haC haH hh hs hGT hj hv
  have hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s := by
    have := hh.1
    rwa [haC, haH] at this
  have h := obj_slot_fits hG ho (k := j) (by rw [hot]; exact hslot) (by rw [hot]; exact hsz)
  rw [hot] at h
  exact ⟨_, rfl, h⟩

end InitECandidate.Solver.MemSafe.Trie
