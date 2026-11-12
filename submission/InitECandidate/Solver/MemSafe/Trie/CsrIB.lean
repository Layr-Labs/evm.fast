import InitECandidate.Solver.MemSafe.Trie.CsrLoopA

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# `compute_state_root`: the invariants before the handle exists

* `IB`: tables, node DB, the extra fact `K`.
* `IM`: `IB` and the handle record `M`.
* `ia_of_im`, `im_of_ia`: `IA = IM + FBlk + ordering`.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

macro "frj" h:term : tactic =>
  `(tactic| (intro p hp; (repeat' apply And.intro); all_goals exact $h p hp _ (by decide)))

theorem fresh_cons {B : List (MlS × ValueHOL 64)} {ns : List MlS} {x : MlS} {v : ValueHOL 64}
    (h : ∀ p ∈ B, ∀ y ∈ ns, p.1 ≠ y) (hn : ∀ y ∈ ns, x ≠ y) :
    ∀ p ∈ (x, v) :: B, ∀ y ∈ ns, p.1 ≠ y := by
  intro p hp
  rcases List.mem_cons.mp hp with rfl | hp
  · exact hn
  · exact h p hp

def IB (a : Act σ) (K : Gam → Prop) (C NR SW AW ND : BitVec 64) (Γ : Gam) (q : Ptrs) (mm : Mem) : Prop :=
  TB C NR SW AW Γ ∧ NDK ND Γ mm ∧ K Γ

def IM (a : Act σ) (K : Gam → Prop) (C NR SW AW ND M : BitVec 64) (Γ : Gam) (q : Ptrs) (mm : Mem) : Prop :=
  TB C NR SW AW Γ ∧ NDK ND Γ mm ∧ HRecU a.p0 Γ q mm M ∧ K Γ

theorem ia_of_im {a : Act σ} {K : Gam → Prop} {C NR SW AW ND M VB : BitVec 64} {Γ : Gam} {q : Ptrs}
    {mm : Mem} (h : IM a K C NR SW AW ND M Γ q mm) (hFB : FBlk a.p0 VB 96 Γ q) (hM : M.toNat + 16 ≤ VB.toNat) :
    IA a K C NR SW AW ND M VB Γ q mm := ⟨h.1, h.2.1, h.2.2.1, hFB, hM, h.2.2.2⟩

theorem im_of_ia {a : Act σ} {K : Gam → Prop} {C NR SW AW ND M VB : BitVec 64} {Γ : Gam} {q : Ptrs}
    {mm : Mem} (h : IA a K C NR SW AW ND M VB Γ q mm) : IM a K C NR SW AW ND M Γ q mm :=
  ⟨h.1, h.2.1, h.2.2.1, h.2.2.2.2.2⟩

theorem im_of_ib {a : Act σ} {K : Gam → Prop} {C NR SW AW ND M : BitVec 64} {Γ : Gam} {q : Ptrs}
    {mm : Mem} (h : IB a K C NR SW AW ND Γ q mm) (hM : HRecU a.p0 Γ q mm M) :
    IM a K C NR SW AW ND M Γ q mm := ⟨h.1, h.2.1, hM, h.2.2⟩

theorem ib_of_im {a : Act σ} {K : Gam → Prop} {C NR SW AW ND M : BitVec 64} {Γ : Gam} {q : Ptrs}
    {mm : Mem} (h : IM a K C NR SW AW ND M Γ q mm) : IB a K C NR SW AW ND Γ q mm :=
  ⟨h.1, h.2.1, h.2.2.2⟩

theorem ib_nb {a : Act σ} (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ') {sg' : Sig} {cs : List Cap}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {C NR SW AW ND : BitVec 64} (hnb : sg'.params.all noBufP = true)
    (hcs : CapsAvoid cs Types.tWSR) (hMod : Mod a sg' cs vs Γ q s st) (hExt : Ext Γ Γ')
    (hh : Heap a Γ q s) (hh' : Heap a Γ' q' st)
    (hIB : IB a K C NR SW AW ND Γ q s.memory) : IB a K C NR SW AW ND Γ' q' st.memory :=
  ⟨tb_ext hExt hIB.1, ndk_call haC hCb hcs hMod hExt hh (fun y hy => (argCells_nb hnb hy).elim) hIB.2.1,
    hK _ _ hExt (gamOK_of_layout (layout_of_heap haC hh')) hIB.2.2⟩

theorem im_call {a : Act σ} (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ') {sg' : Sig} {cs : List Cap}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {C NR SW AW ND M : BitVec 64}
    (hcs : CapsAvoid cs Types.tWSR) (hMod : Mod a sg' cs vs Γ q s st) (hExt : Ext Γ Γ')
    (hnf : NewFresh Γ Γ' q q') (hmo : q.Mono q') (hh : Heap a Γ q s) (hh' : Heap a Γ' q' st)
    (hargs : ∀ y, ArgCells sg'.params vs y → ¬ InObj Γ y.toNat ∧ y.toNat ≠ M.toNat ∧ y.toNat ≠ M.toNat + 8)
    (hIM : IM a K C NR SW AW ND M Γ q s.memory) : IM a K C NR SW AW ND M Γ' q' st.memory := by
  obtain ⟨hTB, hND, hHR, hKΓ⟩ := hIM
  have hord := heap_ord hh
  have hord' := heap_ord hh'
  have hL : Layout Types.guestC q Γ := layout_of_heap haC hh
  exact ⟨tb_ext hExt hTB, ndk_call haC hCb hcs hMod hExt hh (fun y hy => (hargs y hy).1) hND,
    ⟨hrec_call hCb hMod hExt hnf hmo hord hord' hL hHR.1 (fun y hy => ⟨(hargs y hy).2.1, (hargs y hy).2.2⟩),
      hHR.2⟩, hK _ _ hExt (gamOK_of_layout (layout_of_heap haC hh')) hKΓ⟩

theorem im_nb {a : Act σ} (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ') {sg' : Sig} {cs : List Cap}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {C NR SW AW ND M : BitVec 64} (hnb : sg'.params.all noBufP = true)
    (hcs : CapsAvoid cs Types.tWSR) (hMod : Mod a sg' cs vs Γ q s st) (hExt : Ext Γ Γ')
    (hnf : NewFresh Γ Γ' q q') (hmo : q.Mono q') (hh : Heap a Γ q s) (hh' : Heap a Γ' q' st)
    (hIM : IM a K C NR SW AW ND M Γ q s.memory) : IM a K C NR SW AW ND M Γ' q' st.memory :=
  im_call haC hCb hK hcs hMod hExt hnf hmo hh hh' (fun y hy => (argCells_nb hnb hy).elim) hIM

/-- `IM` after an `mpt_set` on the handle. -/
theorem im_mps {a : Act σ} (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {C NR SW AW ND M k kl vp vl : BitVec 64} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    (hext : Ext Γ Γ') (hh : Heap a Γ q s) (hh' : Heap a Γ' q' st) (hmo : q.Mono q')
    (hmd : Mod a mpsSig insCaps [.val (.word M), .val (.word k), .val (.word kl), .val (.word vp),
      .val (.word vl)] Γ q s st)
    (hHR' : HRec Γ' q' st.memory M) (hIM : IM a K C NR SW AW ND M Γ q s.memory) :
    IM a K C NR SW AW ND M Γ' q' st.memory := by
  obtain ⟨hTB, hND, hHR, hKΓ⟩ := hIM
  refine ⟨tb_ext hext hTB, ?_, ⟨hHR', hHR.2⟩, hK _ _ hext (gamOK_of_layout (layout_of_heap haC hh')) hKΓ⟩
  exact ndk_call haC hCb (by unfold CapsAvoid insCaps leafCaps brCaps; decide) hmd hext hh
    (fun y hy => hrec_cells hHR.1 (argCells_mps hy)) hND

/-- Weakening the invariant of a `GP`. -/
theorem gp_weakE {a : Act σ} {L : LocalsH → Prop} {E E' : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : GP a L E Rv r t) (hE : ∀ Γ q mm, E Γ q mm → E' Γ q mm) : GP a L E' Rv r t :=
  ⟨fun hr => let ⟨hl, Γ, q, he, hh, hsc, hEE⟩ := h.1 hr; ⟨hl, Γ, q, he, hh, hsc, hE _ _ _ hEE⟩, h.2⟩

theorem gp_weakE' {a : Act σ} {L : LocalsH → Prop} {E E' : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} {P : State σ → Prop} {c : ProgHOL 64}
    (hE : ∀ Γ q mm, E Γ q mm → E' Γ q mm) (h : HoareG σ guestCtx P c (GP a L E Rv)) :
    HoareG σ guestCtx P c (GP a L E' Rv) :=
  hoareG_conseq h (fun _ _ h => h) (fun _ _ _ _ h => gp_weakE h hE)

end InitECandidate.Solver.MemSafe.Trie
