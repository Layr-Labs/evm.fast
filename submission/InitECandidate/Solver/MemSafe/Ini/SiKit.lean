import InitECandidate.Solver.MemSafe.Ini.RRules
import InitECandidate.Solver.MemSafe.Ini.SiCode
import InitECandidate.Solver.MemSafe.Ini.Ghost2
import InitECandidate.Solver.MemSafe.Rec.TxAccKit
import InitECandidate.Solver.MemSafe.Trie.CallX
import InitECandidate.Solver.MemSafe.Dn.Dwtm
import InitECandidate.Solver.MemSafe.HtabEntries.New

/-!
# `state_init`: the invariant and the lifted calls

A real state `t` of the run satisfies `Heap a Γ q (gz t)`: the ghost state (the raw blocks' globals zeroed) is a
`G`-state of the activation. `ghostLift`: a `FunSpec` relation of a closure function lifts to the real runs.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Trie
open InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

/-- `state_init`'s signature: it writes the protected globals `journal`, `journal_n`, `journal_cap`, `sk_buf`. -/
def siSigW : Sig :=
  ⟨[.any, .any, .any], [], [nm "journal", nm "journal_n", nm "journal_cap", nm "sk_buf"], true⟩

/-- The relation of a lifted call. -/
def Lift (R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop) :
    List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop :=
  fun vs s r t => R vs (gz s) r (gz t) ∧ ∀ g ∈ hid, t.globals.lookup g = s.globals.lookup g

theorem ghostLift (hX : X.code.lookup = guestCode) {f : MlS}
    (hf : (dwFns.map Prod.fst).contains f = true)
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (h : FunSpec σ X f R) : FunSpec σ X f (Lift R) := by
  intro vs body callee rs hl s hs hloc r hr
  obtain ⟨h1, h2, h3⟩ := ghost_run hX hf hl s hs
  refine ⟨?_, h3⟩
  have := h vs body callee rs hl (gz s) hs hloc r (h1.trans hr)
  rw [h2] at this
  exact this

theorem gz_locals (s : State σ) (L : HolFiniteMapExact MlS (ValueHOL 64)) :
    gz { s with locals := L } = { gz s with locals := L } := rfl

theorem gz_callEntry (s : State σ) (callee : HolFiniteMapExact MlS (ValueHOL 64)) :
    gz (callEntryStateHOLFinite s callee) = callEntryStateHOLFinite (gz s) callee := rfl

theorem gz_setKvar_hid {g : MlS} (hg : g ∈ hid) (v : ValueHOL 64) (s : State σ) :
    gz (setKvarHOLFinite .global g v s) = gz s := by
  refine state_ext (t := gz s) rfl rfl rfl rfl (fun g' => ?_) rfl rfl rfl rfl rfl rfl rfl rfl
  show (zeroH (setKvarHOLFinite .global g v s).globals).lookup g' = (zeroH s.globals).lookup g'
  by_cases h' : g' ∈ hid
  · rw [zeroH_in h', zeroH_in h']
  · rw [zeroH_notin h', zeroH_notin h']
    exact HtabEntries.setG_ne (fun e => h' (e ▸ hg))

theorem gz_setKvar_ne {g : MlS} (hg : g ∉ hid) (v : ValueHOL 64) (s : State σ) :
    ∀ g', (gz (setKvarHOLFinite .global g v s)).globals.lookup g' =
      if g' = g then some v else (gz s).globals.lookup g' := by
  intro g'
  by_cases h' : g' ∈ hid
  · have : g' ≠ g := fun e => hg (e ▸ h')
    simp only [this, if_false]
    show (zeroH _).lookup g' = (zeroH _).lookup g'
    rw [zeroH_in h', zeroH_in h']
  · show (zeroH _).lookup g' = _
    rw [zeroH_notin h']
    by_cases e : g' = g
    · subst e; simp [HtabEntries.setG_self]
    · simp only [e, if_false]
      show _ = (zeroH s.globals).lookup g'
      rw [zeroH_notin h']
      exact HtabEntries.setG_ne e

/-! ## The invariant -/

/-- What the run knows about the two raw blocks. -/
structure Know where
  W : Option (BitVec 64) := none
  B : Option (BitVec 64) := none
  wv : Nat → Option (BitVec 64) := fun _ => none
  bv : Nat → Option (BitVec 64) := fun _ => none
  S : Option (BitVec 64) := none
  J : Option (BitVec 64) := none

/-- A raw block: aligned cells, outside `Γ`, allocated now, unallocated at the entry. -/
def BlkF (a : Act σ) (q : Ptrs) (Γ : Gam) (W : BitVec 64) (n : Nat) : Prop :=
  W.toNat % 8 = 0 ∧ ∀ c : BitVec 64, Overlap W.toNat n c →
    ¬ InObj Γ c.toNat ∧ (heapBase ≤ c.toNat ∧ c.toNat < q.hp) ∧ ¬ a.p0.Allocated c.toNat

theorem alloc_of_live {q : Ptrs} {c : Nat} (h : heapBase ≤ c ∧ c < q.hp) : q.Allocated c := Or.inl h

def LVf (Γ : Gam) (kvf : List (MlS × BitVec 64 × FK)) (m : LocalsH) : Prop :=
  ∀ q ∈ kvf, m.lookup q.1 = some (.val (.word q.2.1)) ∧ Fits Γ q.2.2 q.2.1

def wsK (k : Nat) : FK := (Types.guestC.ty Types.tWSR).slot k
def bsK (k : Nat) : FK := (Types.guestC.ty Types.tBS).slot k

/-- The part of the invariant after the activation: locals, raw blocks, known cells. -/
def SIc (a : Act σ) (kn : Know) (kvf : List (MlS × BitVec 64 × FK)) (Γ : Gam) (q : Ptrs)
    (t : State σ) : Prop :=
  LVf Γ kvf t.locals ∧
    (∀ W, kn.W = some W → t.globals.lookup (nm "ws") = some (.val (.word W)) ∧ BlkF a q Γ W 40) ∧
    (∀ B, kn.B = some B → t.globals.lookup (nm "bs") = some (.val (.word B)) ∧ BlkF a q Γ B 80 ∧
      ∃ W, kn.W = some W ∧ (W.toNat + 40 ≤ B.toNat ∨ B.toNat + 80 ≤ W.toNat)) ∧
    (∀ k v, kn.wv k = some v → ∃ W, kn.W = some W ∧ k < 5 ∧
      rd t.memory (W + BitVec.ofNat 64 (8 * k)) = v ∧ Fits Γ (wsK k) v) ∧
    (∀ k v, kn.bv k = some v → ∃ B, kn.B = some B ∧ k < 10 ∧
      rd t.memory (B + BitVec.ofNat 64 (8 * k)) = v ∧ Fits Γ (bsK k) v) ∧
    (∀ S, kn.S = some S → t.globals.lookup (nm "sk_buf") = some (.val (.word S)) ∧ BlkF a q Γ S 64) ∧
    (∀ J, kn.J = some J → t.globals.lookup (nm "journal") = some (.val (.word J)) ∧
      BlkF a q Γ J 16777216)

/-- **The invariant of a real state of `state_init`.** -/
def SI (a : Act σ) (kn : Know) (kvf : List (MlS × BitVec 64 × FK)) (t : State σ) : Prop :=
  ∃ (Γ : Gam) (q : Ptrs), Ext a.Γ0 Γ ∧ Heap a Γ q (gz t) ∧ SIc a kn kvf Γ q t

theorem fresh_alloc' {p p' : Ptrs} (hord' : p'.Ordered) (hord : p.Ordered) {c : BitVec 64}
    (h : Fresh p p' c) : p'.Allocated c.toNat := by
  unfold Ptrs.Ordered at hord hord'
  unfold Fresh at h
  unfold Ptrs.Allocated
  omega

theorem blkF_after {a : Act σ} {q q' : Ptrs} {Γ Γ' : Gam} {W : BitVec 64} {n : Nat}
    (hord : q.Ordered) (hord' : q'.Ordered) (hm : q.Mono q') (hnf : NewFresh Γ Γ' q q')
    (h : BlkF a q Γ W n) : BlkF a q' Γ' W n := by
  refine ⟨h.1, fun c hc => ?_⟩
  obtain ⟨h1, h2, h3⟩ := h.2 c hc
  refine ⟨?_, ⟨h2.1, lt_of_lt_of_le h2.2 hm.1⟩, h3⟩
  rintro ⟨o, ho, hlo, hhi⟩
  rcases hnf o ho c hlo hhi with ⟨o0, ho0, -, -, hlo0, hhi0⟩ | hfr
  · exact h1 ⟨o0, ho0, hlo0, hhi0⟩
  · exact fresh_not_alloc hord hord' hm hfr (alloc_of_live h2)

/-- A block does not wrap. -/
theorem blkF_nowrap {a : Act σ} {q : Ptrs} {Γ : Gam} {W : BitVec 64} {n : Nat}
    (hord : q.Ordered) (h : BlkF a q Γ W n) : W.toNat + n ≤ 2 ^ 64 := by
  by_contra hc
  have hse : scratchEnd + 8 < 2 ^ 64 := by decide
  have e : (BitVec.ofNat 64 (2 ^ 64 - 8)).toNat = 2 ^ 64 - 8 := by decide
  have := alloc_of_live (h.2 (BitVec.ofNat 64 (2 ^ 64 - 8)) ⟨by rw [e]; decide, by rw [e]; have := W.isLt; omega,
    by rw [e]; omega⟩).2.1
  rw [e] at this
  unfold Ptrs.Allocated at this
  obtain ⟨-, d2, d3, d4, d5, -⟩ := hord
  omega

theorem blkF_cell {a : Act σ} {q : Ptrs} {Γ : Gam} {W : BitVec 64} {n k : Nat} (hord : q.Ordered)
    (h : BlkF a q Γ W n) (hk : 8 * k + 8 ≤ n) : Overlap W.toNat n (W + BitVec.ofNat 64 (8 * k)) := by
  have hw := blkF_nowrap hord h
  have h8 := h.1
  have e : (W + BitVec.ofNat 64 (8 * k)).toNat = W.toNat + 8 * k := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8 * k) (by omega),
      Nat.mod_eq_of_lt (by omega)]
  refine ⟨by rw [e]; omega, by rw [e]; omega, by rw [e]; omega⟩

theorem addCell_ne {W : BitVec 64} {i j : Nat} (hw : W.toNat + 8 * i + 8 ≤ 2 ^ 64)
    (hw' : W.toNat + 8 * j + 8 ≤ 2 ^ 64) (hij : i ≠ j) :
    W + BitVec.ofNat 64 (8 * i) ≠ W + BitVec.ofNat 64 (8 * j) := by
  intro h
  have h1 := congrArg BitVec.toNat h
  rw [BitVec.toNat_add, BitVec.toNat_add, BitVec.toNat_ofNat, BitVec.toNat_ofNat,
    Nat.mod_eq_of_lt (a := 8 * i) (by omega), Nat.mod_eq_of_lt (a := 8 * j) (by omega),
    Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)] at h1
  omega

/-- **Across a lifted call the invariant's block part is kept**, given the callee kept the memory of cells outside `Γ`. -/
theorem siC_call {a : Act σ} {kn : Know} {kvf : List (MlS × BitVec 64 × FK)} {Γ Γ' : Gam} {q q' : Ptrs}
    {s st : State σ} (hS : SIc a kn kvf Γ q s) (hord : q.Ordered) (hord' : q'.Ordered) (hm : q.Mono q')
    (hnf : NewFresh Γ Γ' q q') (hext : Ext Γ Γ')
    (hg : ∀ g ∈ hid, st.globals.lookup g = s.globals.lookup g)
    (hmem : ∀ c : BitVec 64, ¬ InObj Γ c.toNat → q.Allocated c.toNat → st.memory c = s.memory c) :
    SIc a kn kvf Γ' q' { st with locals := s.locals } := by
  obtain ⟨hL, hW, hB, hwv, hbv, hSk, hJr⟩ := hS
  refine ⟨fun x hx => ?_, fun W hW' => ?_, fun B hB' => ?_, fun k v hv => ?_, fun k v hv => ?_,
    fun S hS' => ?_, fun J hJ' => ?_⟩
  · obtain ⟨h1, h2⟩ := hL x hx
    exact ⟨h1, fits_ext hext h2⟩
  · obtain ⟨h1, h2⟩ := hW W hW'
    exact ⟨(hg _ (by simp [hid])).trans h1, blkF_after hord hord' hm hnf h2⟩
  · obtain ⟨h1, h2, W, hWW, hWB⟩ := hB B hB'
    exact ⟨(hg _ (by simp [hid])).trans h1, blkF_after hord hord' hm hnf h2, W, hWW, hWB⟩
  · obtain ⟨W, hWW, hk, hr, hf⟩ := hwv k v hv
    obtain ⟨-, h2⟩ := hW W hWW
    have hc := h2.2 _ (blkF_cell (n := 40) (k := k) hord h2 (by omega))
    refine ⟨W, hWW, hk, ?_, fits_ext hext hf⟩
    show rd st.memory _ = v
    unfold rd at hr ⊢
    rw [hmem _ hc.1 (alloc_of_live hc.2.1)]; exact hr
  · obtain ⟨B, hBB, hk, hr, hf⟩ := hbv k v hv
    obtain ⟨-, h2, -⟩ := hB B hBB
    have hc := h2.2 _ (blkF_cell (n := 80) (k := k) hord h2 (by omega))
    refine ⟨B, hBB, hk, ?_, fits_ext hext hf⟩
    show rd st.memory _ = v
    unfold rd at hr ⊢
    rw [hmem _ hc.1 (alloc_of_live hc.2.1)]; exact hr
  · obtain ⟨h1, h2⟩ := hSk S hS'
    exact ⟨(hg _ (by simp [hid])).trans h1, blkF_after hord hord' hm hnf h2⟩
  · obtain ⟨h1, h2⟩ := hJr J hJ'
    exact ⟨(hg _ (by simp [hid])).trans h1, blkF_after hord hord' hm hnf h2⟩

/-- The unfolded relation of a summary. -/
def SumRel (C : Cfg) (H : Hooks σ) (sg : Sig)
    (Pre : List (ValueHOL 64) → State σ → Gam → Prop)
    (PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop)
    (Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop) :
    List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop :=
  fun vs s r t => Good (some r) → ¬ Abortive r → ∀ Γ, G C H Γ s →
    (∃ p, ptrsOf s = some p ∧ ArgsOK C Γ p sg.params vs) → Pre vs s Γ →
      ∃ Γ' p p', SumCore C H sg (fun a => ProtCell C Γ a ∧ PW vs s Γ a) Γ s vs r t Γ' p p' ∧
        Q vs s Γ r t Γ'

theorem sumSpecA_funSpec {C : Cfg} {H : Hooks σ} {sg : Sig} {f : MlS}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpecA σ X C H f sg Pre PW Q) : FunSpec σ X f (SumRel C H sg Pre PW Q) := h

/-- **A lifted call**: the activation invariant of the ghost state after a closure call, and the frame of cells outside
`Γ`. -/
theorem gcall {a : Act σ} (ha : ActOK a guestCtx) {sg' : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {Γ : Gam} {q : Ptrs} {s st : State σ} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {vs : List (ValueHOL 64)} {v : ValueHOL 64}
    (hh : Heap a Γ q (gz s))
    (hR : Lift (SumRel a.Cb a.H sg' Pre (fun _ s Γ x => CapPW [] s Γ x) Q) vs
      (callEntryStateHOLFinite s callee) (.returned v) st)
    (hA : ArgsOK a.Cb Γ q sg'.params vs) (hnoarg : ∀ x, ¬ ArgCells sg'.params vs x)
    (hpre : Pre vs (callEntryStateHOLFinite (gz s) callee) Γ)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true) :
    ∃ Γ' q', Ext Γ Γ' ∧ Heap a Γ' q' (gz st) ∧ q.Mono q' ∧ NewFresh Γ Γ' q q' ∧
      (sg'.grows = false → NewFresh Γ Γ' q q) ∧
      (∀ c : BitVec 64, ¬ InObj Γ c.toNat → q.Allocated c.toNat → st.memory c = s.memory c) ∧
      RetOK Γ' q q' vs sg'.ret v ∧ Q vs (callEntryStateHOLFinite (gz s) callee) Γ (.returned v) (gz st) Γ' := by
  obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hmd, hret, hQ⟩ := Trie.heap_callGX (r := .returned v)
    (Pre := Pre) (Q := Q) (cs := []) ha hh (capSub_nil _) (callee := callee) (st := gz st)
    (by exact hR.1) (by simp [Good]) (by simp [Abortive]) hA (fun x hx => absurd hx (hnoarg x)) hpre hgw hgr
  refine ⟨Γ', q', hext, hh', hmo, hnf, hnfp, fun c hc hal => ?_, hret v rfl, hQ⟩
  exact hmd c (fun hw => hc (Rec.wcell_inObj hh hw)) (hnoarg c) (fun hp => by obtain ⟨-, c', hc', -⟩ := hp; cases hc') hal

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.ghostLift
#print axioms InitECandidate.Solver.MemSafe.Ini.gz_setKvar_hid
