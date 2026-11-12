import InitECandidate.Solver.MemSafe.Pre.EmitCode
import InitECandidate.Solver.MemSafe.Helpers.Mem

set_option autoImplicit false

/-!
# A small kit for straight-line bodies with several `alloc` blocks (`Trk` style)

State predicate `ETk bl u`: `u` is a `Struct.Trk` of the entry `(Γ0, s0, p0)` for the footprint
`PWl` (list cells, or cells unallocated at entry), and every block `(b, n)` of `bl` is an 8-aligned
caller temporary: its cells are outside `Γ`, allocated now, and unallocated at entry.

* `blkL_after`: blocks survive a callee's `SumCore` (new objects only in fresh space);
* `et_call`: a call to a `CSumm` callee (no capabilities) whose buffer arguments lie in blocks;
* `et_alloc`: `var x = alloc(n); k` adds the block `(x, n)`;
* `et_store`: a one-word store into a block.
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Pre
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Inc
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The footprint: list cells of `Γ0`, or cells unallocated at entry. -/
def PWl (Γ0 : Gam) (p0 : Ptrs) (a : BitVec 64) : Prop :=
  (ProtCell guestC Γ0 a ∧ LaPW Γ0 a) ∨ ¬ p0.Allocated a.toNat

/-- The blocks are caller temporaries. -/
def BlkL (p0 p : Ptrs) (Γ : Gam) (bl : List (BitVec 64 × Nat)) : Prop :=
  ∀ b ∈ bl, b.1.toNat % 8 = 0 ∧ (heapBase ≤ b.1.toNat ∧ b.1.toNat + b.2 ≤ p.hp) ∧
    b.1.toNat + b.2 < 2 ^ 64 ∧
    ∀ y : BitVec 64, Overlap b.1.toNat b.2 y →
      ¬ InObj Γ y.toNat ∧ p.Allocated y.toNat ∧ ¬ p0.Allocated y.toNat

def ETk (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (bl : List (BitVec 64 × Nat))
    (u : State σ) : Prop :=
  ∃ (Γ : Gam) (p : Ptrs), Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ u ∧ ptrsOf u = some p ∧
    BlkL p0 p Γ bl

theorem blkL_after {p0 p p' : Ptrs} {bl : List (BitVec 64 × Nat)} {Γ Γ' : Gam}
    (hord : p.Ordered) (hord' : p'.Ordered) (hm : p.Mono p') (hnf : NewFresh Γ Γ' p p')
    (h : BlkL p0 p Γ bl) : BlkL p0 p' Γ' bl := by
  intro b hb
  obtain ⟨h8, hhp, hbd, hy⟩ := h b hb
  refine ⟨h8, ⟨hhp.1, le_trans hhp.2 hm.1⟩, hbd, fun y hy' => ?_⟩
  obtain ⟨h1, h2, h3⟩ := hy y hy'
  refine ⟨?_, alloc_mono hm h2, h3⟩
  rintro ⟨o, ho, hlo, hhi⟩
  rcases hnf o ho y hlo hhi with ⟨o0, ho0, -, -, hlo0, hhi0⟩ | hfr
  · exact h1 ⟨o0, ho0, hlo0, hhi0⟩
  · exact fresh_not_alloc hord hord' hm hfr h2

section rules
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- **A call to a `CSumm` callee (no capabilities)** whose buffer cells lie in the blocks. -/
theorem et_call (hH : HooksLawful guestC H) {f : MlS} {args : List (ExpHOL 64)} {sg' : Sig}
    (hf : CSumm σ X guestC H f sg' []) (hgw : ∀ g ∈ guestC.PG, g ∉ sg'.gw)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) {bl : List (BitVec 64 × Nat)}
    {L : HolFiniteMapExact MlS (ValueHOL 64) → Prop}
    (hargs : ∀ u : State σ, L u.locals → ∀ vs, evs u args = some vs →
      (∀ Γ p, BlkL p0 p Γ bl → ArgsOK guestC Γ p sg'.params vs) ∧
      (∀ x, ArgCells sg'.params vs x → ∃ b ∈ bl, Overlap b.1.toNat b.2 x)) :
    Hoare σ X (fun u => ETk H Γ0 s0 p0 bl u ∧ L u.locals) (callD f args)
      (fun r t => r = none ∧ ETk H Γ0 s0 p0 bl t ∧ L t.locals) := by
  refine hoare_callD (FunSpec.and (summ_funSpec hf) (Helpers.funSpec_dom _)) ?_
  intro s hs ⟨⟨Γ, p, hT, hp, hbl⟩, hL⟩ vs hvs callee v st ⟨hS, hd, hbe⟩ _
  obtain ⟨hA, hC⟩ := hargs s hL vs hvs
  have hG := Struct.trk_G hT
  obtain ⟨q, hq, hordq, hLay, -⟩ := id hG
  rw [hp] at hq
  cases hq
  have hGe : G guestC H Γ (callEntryStateHOLFinite s callee) :=
    Struct.G_congr (s := s) hH rfl rfl rfl rfl hG
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p :=
    (Frames.ptrsOf_congr rfl).trans hp
  obtain ⟨Γ', q1, q2, hcore, -⟩ := hS (by simp [Good]) (by simp [Abortive]) Γ hGe
    ⟨p, hpe, hA Γ p hbl⟩ (fun c hc => by cases hc)
  have hq1 : p = q1 := Option.some.inj (hpe.symm.trans hcore.1)
  subst hq1
  have hT' := Struct.trk_call hT hord0 hL0 rfl rfl hcore hgw
    (fun a ha => Or.inr (Or.inl (by
      obtain ⟨b, hb, ho⟩ := hC a ha
      exact ((hbl b hb).2.2.2 a ho).2.2)))
    (fun a hpc hcap => by obtain ⟨c, hc, -⟩ := hcap; exact absurd hc (by simp)) hd hbe
  obtain ⟨hp1, hp2, hmo, hex, hnf, hG', -⟩ := hcore
  obtain ⟨q', hq', hord', -⟩ := hG'
  rw [hp2] at hq'
  cases hq'
  exact ⟨rfl, ⟨Γ', q2, Struct.trk_congr hH hT' rfl rfl rfl rfl, hp2,
    blkL_after hordq hord' hmo hnf hbl⟩, hL⟩


/-- **`var x = alloc(n); k`**: inside `k` the block `(x, n)` joins the blocks. -/
theorem et_alloc (hF : FoldOK σ X guestC H)
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : ∀ r (t : State σ) L, Q r t → Q r { t with locals := L })
    {bl : List (BitVec 64 × Nat)} {L : HolFiniteMapExact MlS (ValueHOL 64) → Prop}
    {L' : BitVec 64 → HolFiniteMapExact MlS (ValueHOL 64) → Prop} {x : MlS} (n : Nat)
    (hn : n < 2 ^ 32) {k : ProgHOL 64}
    (hL' : ∀ (s st : State σ) (Ar : BitVec 64), L s.locals →
      L' Ar (setVarHOLFinite x (.val (.word Ar)) { st with locals := s.locals }).locals)
    (hk : ∀ Ar : BitVec 64, Ar.toNat % 8 = 0 → heapBase ≤ Ar.toNat → Ar.toNat + n ≤ heapEnd →
      Hoare σ X (fun t => ETk H Γ0 s0 p0 ((Ar, n) :: bl) t ∧ L' Ar t.locals) k Q) :
    Hoare σ X (fun u => ETk H Γ0 s0 p0 bl u ∧ L u.locals)
      (.decCall x .one (nm "alloc") [cw n] k) Q := by
  have hH := hF.hH
  have hA : Struct.AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (allocSpec_alloc hF.hX) (Helpers.funSpec_dom _))
    hQ ?_
  intro s hs ⟨⟨Γ, p, hT, hp, hbl⟩, hL⟩ vs hvs callee v st ⟨hAl, hd, hbe⟩ _ _
  rw [evs_cons (ev_cw _ n) evs_nil] at hvs
  cases hvs
  have hn' : (BitVec.ofNat 64 n).toNat = n := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  have hG := Struct.trk_G hT
  obtain ⟨q, hq, hordq, hLay, -⟩ := id hG
  rw [hp] at hq
  cases hq
  have hm0 : p0.Mono p := by
    obtain ⟨pT, hpT, hm0, -⟩ := hT
    rw [hp] at hpT
    cases hpT
    exact hm0
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p :=
    (Frames.ptrsOf_congr rfl).trans hp
  obtain ⟨hm, hgl, p1, hp1, hord1, hmo1, hret⟩ := hAl (by simp [Good]) _ p rfl hpe hordq
  obtain ⟨l, rfl, hl8, hlive1, hna1⟩ := hret _ rfl
  rw [hn'] at hlive1 hna1
  have hT1 := Struct.trk_alloc hH hA hT rfl rfl hpe hm hgl hp1 hord1 hmo1 hd hbe
  have hhe : p1.hp ≤ heapEnd := hord1.2.1
  have hlt : heapEnd < 2 ^ 64 := by decide
  refine hoare_pre (hk l hl8 hlive1.1 (by have := hlive1.2; omega)) (fun t _ ht => ?_)
  subst ht
  refine ⟨⟨Γ, p1, Struct.trk_congr hH hT1 rfl rfl rfl rfl, (Frames.ptrsOf_congr rfl).trans hp1, ?_⟩,
    hL' s st l hL⟩
  intro b hb
  rcases List.mem_cons.mp hb with rfl | hb
  · refine ⟨hl8, ⟨hlive1.1, hlive1.2⟩, by have := hlive1.2; show l.toNat + n < 2 ^ 64; omega,
      fun y hy => ?_⟩
    obtain ⟨hy8, hy1, hy2⟩ := hy
    have hy1' : l.toNat < y.toNat + 8 := hy1
    have hy2' : y.toNat < l.toNat + n := hy2
    have hyl : l.toNat ≤ y.toNat := by omega
    refine ⟨?_, Helpers.allocated_of_live hlive1 hyl hy2', Struct.notAlloc_mono hm0 (hna1 _ hyl hy2')⟩
    rintro hio
    exact hna1 y.toNat hyl hy2' (Helpers.allocated_of_inObj hLay hio)
  · exact blkL_after hordq hord1 hmo1 Helpers.newFresh_same hbl b hb

/-- **A one-word store into a block** (the stored word may depend on the state). -/
theorem et_store (hH : HooksLawful guestC H) {bl : List (BitVec 64 × Nat)}
    {L : HolFiniteMapExact MlS (ValueHOL 64) → Prop} {ea ev' : ExpHOL 64} {A : BitVec 64}
    {V : State σ → BitVec 64}
    (hA : ∀ u : State σ, L u.locals → ev u ea = some (.val (.word A)))
    (hV : ∀ u : State σ, ETk H Γ0 s0 p0 bl u → L u.locals → ev u ev' = some (.val (.word (V u))))
    (hIn : ∃ b ∈ bl, Overlap b.1.toNat b.2 A) :
    Hoare σ X (fun u => ETk H Γ0 s0 p0 bl u ∧ L u.locals) (.store ea ev')
      (fun r t => r = none ∧ ETk H Γ0 s0 p0 bl t ∧ L t.locals) := by
  refine Spec.Inv.hoare_store_w (fun _ => A) V ?_ ?_ ?_
  · intro u _ ⟨_, hL⟩ w hw
    rw [hA u hL] at hw
    have h := Option.some.inj hw
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at h
    exact h.symm
  · intro u _ ⟨hE, hL⟩ v hv
    rw [hV u hE hL] at hv
    exact (Option.some.inj hv).symm
  · intro u _ ⟨⟨Γ, p, hT, hp, hbl⟩, hL⟩
    obtain ⟨b, hb, ho⟩ := hIn
    obtain ⟨h1, h2, h3⟩ := (hbl b hb).2.2.2 A ho
    exact ⟨rfl, ⟨Γ, p, trk_tmpI hH hT h1 h3 (V u), hp, hbl⟩, hL⟩

end rules

end InitECandidate.Solver.MemSafe.Pre

#print axioms InitECandidate.Solver.MemSafe.Pre.blkL_after
#print axioms InitECandidate.Solver.MemSafe.Pre.et_call
#print axioms InitECandidate.Solver.MemSafe.Pre.et_alloc
#print axioms InitECandidate.Solver.MemSafe.Pre.et_store
