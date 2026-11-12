import InitECandidate.Solver.MemSafe.Dn.LoopM2

set_option autoImplicit false

/-!
# The decoder loop, mode 0: helpers

* `node_below`: a cell of a node object lies below `heap_ptr`, hence below the record region;
* `fits_ext`: `Fits` survives an extension of `Γ`;
* `gp_stSCH`, `gp_stWH`: the store rules with the heap invariant available to the client's
  post (to place node addresses below the record region);
* `neArgs`: `node_new_ext`'s argument check (a `fits nodeU` child, no argument cells).
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

theorem node_region {t : Nat} (ht : t ∈ Node.nodeTys) : (Types.guestC.ty t).region = .heap := by
  simp only [Node.nodeTys, List.mem_cons, List.not_mem_nil, or_false] at ht
  rcases ht with rfl | rfl | rfl | rfl
  · rw [Types.ty_NHASHED]; rfl
  · rw [Types.ty_NLEAF]; rfl
  · rw [Types.ty_NEXT]; rfl
  · rw [Types.ty_NBRANCH]; rfl

/-- A node object lies below `heap_ptr`, hence below `scratch_ptr`. -/
theorem node_below {a : Act σ} (haC : a.C = Types.guestC) {Γ : Gam} {q : Ptrs} {s : State σ}
    (hh : Heap a Γ q s) {o : Obj} (ho : o ∈ Γ) (ht : o.ty ∈ Node.nodeTys) :
    o.base.toNat + o.size ≤ q.hp ∧ q.hp ≤ q.sp := by
  obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
  rw [hh.2.1] at hp1
  cases hp1
  rw [haC] at hL
  obtain ⟨-, -, -, -, hlive⟩ := hL.1 o ho
  rw [node_region ht] at hlive
  simp only [Region.Live] at hlive
  obtain ⟨o1, o2, o3, o4, -⟩ := hord
  unfold Obj.lo at hlive
  exact ⟨hlive.2, by omega⟩

theorem fits_ext {Γ Γ' : Gam} (he : Ext Γ Γ') {k : FK} {w : BitVec 64} (h : Fits Γ k w) :
    Fits Γ' k w := by
  cases k with
  | scalar => trivial
  | prot => trivial
  | bnd => exact h
  | ptr t =>
    obtain ⟨o, ho, hb, ht⟩ := h
    obtain ⟨o', ho', hb', ht', -⟩ := he o ho
    exact ⟨o', ho', hb'.trans hb, ht'.trans ht⟩
  | nptr t =>
    rcases h with h | ⟨o, ho, hb, ht⟩
    · exact Or.inl h
    · obtain ⟨o', ho', hb', ht', -⟩ := he o ho
      exact Or.inr ⟨o', ho', hb'.trans hb, ht'.trans ht⟩
  | uptr ts =>
    rcases h with h | ⟨o, ho, hb, ht⟩
    · exact Or.inl h
    · obtain ⟨o', ho', hb', ht', -⟩ := he o ho
      exact Or.inr ⟨o', ho', hb'.trans hb, ht' ▸ ht⟩

/-- **A store into a `scalar` slot**, the client's post seeing the heap invariant. -/
theorem gp_stSCH {a : Act σ} (ha : ActOK a X) (haC : a.C = Types.guestC := by rfl) {L : LocalsH → Prop}
    {E E' : Gam → Ptrs → Mem → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {x : MlS} {j : Nat} {e : ExpHOL 64} {B : BitVec 64}
    (hx : ∀ m, L m → m.lookup x = some (.val (.word B)))
    (hj : 8 * j + 8 < nullMax)
    (hobj : ∀ (s : State σ) Γ q, Heap a Γ q s → E Γ q s.memory → B.toNat < nullMax ∨
      ∃ o ∈ Γ, o.base = B ∧ o.HasSlot j ∧ (a.Cb.ty o.ty).slot j = .scalar)
    (hv : ∀ (s : State σ) v, L s.locals → ev s e = some v → ∃ V, v = .val (.word V))
    (hE : ∀ (s : State σ) Γ q (V : BitVec 64), L s.locals → Heap a Γ q s → E Γ q s.memory →
      (∃ o ∈ Γ, o.base = B ∧ o.HasSlot j ∧ (a.Cb.ty o.ty).slot j = .scalar) →
      (∀ c, Hooks.RCell Γ c → c ≠ B + BitVec.ofNat 64 (8 * j)) →
      InObj Γ (B + BitVec.ofNat 64 (8 * j)).toNat →
      ev s e = some (.val (.word V)) → E' Γ q (Struct.upd s.memory (B + BitVec.ofNat 64 (8 * j)) V)) :
    HoareG σ X (GI a L E) (.store (.op .add [lv x, cw (8 * j)]) e) (GP a L E' Rv) := by
  refine gp_store fun s Γ q hs hL hh hEs w v mem hw hv' hmem => ?_
  rw [ev_add_cw (hx _ hL) (8 * j)] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  obtain ⟨V, rfl⟩ := hv s v hL hv'
  have hm := Struct.store_word hmem
  rw [flat_word] at hmem
  obtain ⟨hmod, hdom⟩ := Helpers.store1_mod hmem
  rcases hobj s Γ q hh hEs with hnull | ⟨o, ho, hb, hk, hsc⟩
  · exfalso
    have h1 := ns_of ha hs _ hdom
    have hlt : (B + BitVec.ofNat 64 (8 * j)).toNat < heapBase := by
      rw [Spec.Mpt.Dec.toNat_add_lt (by simp only [nullMax] at hnull hj; omega)]
      simp only [nullMax, heapBase] at hnull hj ⊢
      omega
    omega
  · refine ⟨heap_store_scell ha hh hmod fun y hy => ?_, ?_⟩
    · subst hy
      exact ⟨o, ho, j, hk, hsc, by rw [Obj.cell, hb]⟩
    · rw [hm]
      obtain ⟨p1, hp1, hord, hL1, -⟩ := hh.1
      have hin : InObj Γ (B + BitVec.ofNat 64 (8 * j)).toNat := by
        have := cell_in hord hL1 ho hk
        rw [Obj.cell, hb] at this
        exact this
      refine hE s Γ q V hL hh hEs ⟨o, ho, hb, hk, hsc⟩ ?_ hin hv'
      rw [haC] at hL1
      exact rcell_ne_wcell hord hL1 (A := B + BitVec.ofNat 64 (8 * j))
        ⟨o, ho, j, hk, by rw [← haC, ha.hupg]; exact (show (a.Cb.ty o.ty).slot j ≠ FK.prot by rw [hsc]; exact fun h => by cases h), by rw [Obj.cell, hb]⟩

/-- **A typed store**, the client's post seeing the heap invariant. -/
theorem gp_stWH {a : Act σ} (ha : ActOK a X) (haC : a.C = Types.guestC := by rfl) {L : LocalsH → Prop}
    {E E' : Gam → Ptrs → Mem → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {ea e : ExpHOL 64} {A : BitVec 64}
    (hea : ∀ s : State σ, L s.locals → ev s ea = some (.val (.word A)))
    (hv : ∀ (s : State σ) v, L s.locals → ev s e = some v → ∃ V, v = .val (.word V))
    (hfit : ∀ (s : State σ) Γ q (V : BitVec 64), L s.locals → Heap a Γ q s → E Γ q s.memory →
      ev s e = some (.val (.word V)) → ∃ o ∈ Γ, ∃ j, o.HasSlot j ∧
        (a.Cb.ty o.ty).slot j ≠ .prot ∧ A = o.cell j ∧ Fits Γ ((a.Cb.ty o.ty).slot j) V)
    (hE : ∀ (s : State σ) Γ q (V : BitVec 64), L s.locals → Heap a Γ q s → E Γ q s.memory →
      (∀ c, Hooks.RCell Γ c → c ≠ A) →
      ev s e = some (.val (.word V)) → E' Γ q (Struct.upd s.memory A V)) :
    HoareG σ X (GI a L E) (.store ea e) (GP a L E' Rv) := by
  refine gp_store fun s Γ q hs hL hh hEs w v mem hw hv' hmem => ?_
  rw [hea s hL] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  obtain ⟨V, rfl⟩ := hv s v hL hv'
  have hm := Struct.store_word hmem
  rw [flat_word] at hmem
  obtain ⟨hmod, -⟩ := Helpers.store1_mod hmem
  obtain ⟨o, ho, j, hj, hnp, hA, hF⟩ := hfit s Γ q V hL hh hEs hv'
  have hW : WCell a.C Γ A := ⟨o, ho, j, hj, by rw [ha.hupg]; exact hnp, hA⟩
  refine ⟨heap_write ha hh hmod (fun x hx => Or.inr (hx ▸ hW)) (fun o' ho' k hk hx => ?_)
    (fun x hx => hx ▸ foot_of_wcell hh ha.hord0 ha.hsz0 hW), ?_⟩
  · obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
    obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho' ho hk hj (hx.trans hA)
    rw [hx, hm, Struct.rd_upd_self, ha.hupg]
    exact hF
  · rw [hm]
    obtain ⟨p1, hp1, hord, hL1, -⟩ := hh.1
    rw [haC] at hL1
    exact hE s Γ q V hL hh hEs (rcell_ne_wcell hord hL1 (haC ▸ hW)) hv'

/-- `node_new_ext`'s arguments: two words and a `nodeU` child. -/
theorem neArgs {C : Cfg} {Γ : Gam} {q : Ptrs} {v0 v1 : ValueHOL 64} {R : BitVec 64}
    (hR : Fits Γ Types.nodeU R) :
    ArgsOK C Γ q Node.neSig.params [v0, v1, .val (.word R)] ∧
      ∀ x, ¬ ArgCells Node.neSig.params [v0, v1, .val (.word R)] x := by
  refine ⟨⟨rfl, fun i pt v hp hv => ?_⟩, fun x ⟨i, w, _, h⟩ => ?_⟩
  · rcases i with _ | _ | _ | i
    · simp only [Node.neSig, List.getElem?_cons_zero, Option.some.injEq] at hp; subst hp; trivial
    · simp only [Node.neSig, List.getElem?_cons_succ, List.getElem?_cons_zero,
        Option.some.injEq] at hp; subst hp; trivial
    · simp only [Node.neSig, List.getElem?_cons_succ, List.getElem?_cons_zero,
        Option.some.injEq] at hp hv
      subst hp hv
      exact ⟨R, rfl, hR⟩
    · simp [Node.neSig] at hp
  · rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, y, hn, -⟩ <;>
      (rcases i with _ | _ | _ | i <;> simp [Node.neSig] at hn)

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.gp_stWH
#print axioms InitECandidate.Solver.MemSafe.Dn.neArgs
