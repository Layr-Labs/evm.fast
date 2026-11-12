import InitECandidate.Solver.MemSafe.AExp

/-!
# Transport across a callee (M1)

A callee summary (`SumCore`) relates the call state `s` (typing `Γ`, allocator `p`) to the
return state `t` (typing `Γ'`, allocator `p'`) by `Mono`, `Ext`, `NewFresh` and a footprint.
These lemmas carry the caller's activation invariant across: fitting values, abstract values,
writable buffers and temporaries survive (`fits_ext`, `vok_ext`, `bufOK_ext`), allocation is
monotone (`alloc_mono`), `Ext` / `NewFresh` compose (`ext_trans`, `newFresh_trans`), and the
callee's footprint lies in the caller's (`heap_after_call`).
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

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

theorem avok_ext {Γ Γ' : Gam} (he : Ext Γ Γ') {Θ : List (BitVec 64 × Nat)} {av : AV}
    {w : BitVec 64} (h : AVok Γ Θ av w) : AVok Γ' Θ av w := by
  cases av with
  | gp t o =>
      obtain ⟨ob, hob, ht, rfl⟩ := h
      obtain ⟨o', ho', hb', ht', -⟩ := he ob hob
      exact ⟨o', ho', ht'.trans ht, by rw [hb']⟩
  | fk k => exact fits_ext he h
  | np ts o =>
      obtain ⟨b, rfl, hb | ⟨ob, hob, hbb, ht⟩⟩ := h
      · exact ⟨b, rfl, Or.inl hb⟩
      · obtain ⟨o', ho', hb', ht', -⟩ := he ob hob
        exact ⟨b, rfl, Or.inr ⟨o', ho', hb'.trans hbb, by rw [ht']; exact ht⟩⟩
  | _ => exact h

theorem vok_ext {Γ Γ' : Gam} (he : Ext Γ Γ') {Θ : List (BitVec 64 × Nat)} {av : AV}
    {v : ValueHOL 64} (h : VOk Γ Θ av v) : VOk Γ' Θ av v := by
  cases av with
  | unk => trivial
  | wide n => exact h
  | _ => obtain ⟨w, hv, hw⟩ := h; exact ⟨w, hv, avok_ext he hw⟩

theorem locals_ext {Γ Γ' : Gam} (he : Ext Γ Γ') {Θ : List (BitVec 64 × Nat)} {A : AEnv}
    {s : State σ} (h : LocalsOK A Γ Θ s) : LocalsOK A Γ' Θ s := fun x av hx =>
  let ⟨v, hv, hok⟩ := h x av hx; ⟨v, hv, vok_ext he hok⟩

theorem ext_refl (Γ : Gam) : Ext Γ Γ := fun o ho => ⟨o, ho, rfl, rfl, Nat.le_refl _⟩

theorem ext_trans {Γ Γ' Γ'' : Gam} (h : Ext Γ Γ') (h' : Ext Γ' Γ'') : Ext Γ Γ'' := by
  intro o ho
  obtain ⟨o', ho', hb, ht, hs⟩ := h o ho
  obtain ⟨o'', ho'', hb', ht', hs'⟩ := h' o' ho'
  exact ⟨o'', ho'', hb'.trans hb, ht'.trans ht, Nat.le_trans hs hs'⟩

theorem mono_trans {p p' p'' : Ptrs} (h : p.Mono p') (h' : p'.Mono p'') : p.Mono p'' := by
  unfold Ptrs.Mono at *; omega

theorem mono_refl (p : Ptrs) : p.Mono p := by unfold Ptrs.Mono; omega

theorem alloc_mono {p p' : Ptrs} (h : p.Mono p') {a : Nat} (ha : p.Allocated a) :
    p'.Allocated a := by
  unfold Ptrs.Mono at h; unfold Ptrs.Allocated at *; omega

theorem fresh_mono {p0 p p' : Ptrs} (h0 : p0.Mono p) {a : BitVec 64} (h : Fresh p p' a) :
    Fresh p0 p' a := by
  unfold Ptrs.Mono at h0; unfold Fresh at *; omega

theorem fresh_of_mono {p0 p p' : Ptrs} (h : p.Mono p') {a : BitVec 64} (hf : Fresh p0 p a) :
    Fresh p0 p' a := by
  unfold Ptrs.Mono at h; unfold Fresh at *; omega

theorem newFresh_trans {Γ0 Γ Γ' : Gam} {p0 p p' : Ptrs} (hm0 : p0.Mono p) (hm : p.Mono p')
    (h0 : NewFresh Γ0 Γ p0 p) (h : NewFresh Γ Γ' p p') : NewFresh Γ0 Γ' p0 p' := by
  intro o ho a hlo hhi
  rcases h o ho a hlo hhi with ⟨o1, ho1, hb1, ht1, hlo1, hhi1⟩ | hf
  · rcases h0 o1 ho1 a hlo1 hhi1 with ⟨o0, ho0, hb0, ht0, hlo0, hhi0⟩ | hf0
    · exact Or.inl ⟨o0, ho0, hb0.trans hb1, ht0.trans ht1, hlo0, hhi0⟩
    · exact Or.inr (fresh_of_mono hm hf0)
  · exact Or.inr (fresh_mono hm0 hf)

theorem newFresh_refl (Γ : Gam) (p p' : Ptrs) : NewFresh Γ Γ p p' :=
  fun o ho _ hlo hhi => Or.inl ⟨o, ho, rfl, rfl, hlo, hhi⟩

/-! ## Buffers and temporaries -/

/-- A cell outside `Γ` that was allocated before the call is outside `Γ'`. -/
theorem notInObj_after {Γ Γ' : Gam} {p p' : Ptrs} (hp : p.Ordered) (hp' : p'.Ordered)
    (hm : p.Mono p') (hnf : NewFresh Γ Γ' p p') {a : BitVec 64} (hn : ¬ InObj Γ a.toNat)
    (ha : p.Allocated a.toNat) : ¬ InObj Γ' a.toNat := by
  intro ⟨o, ho, hlo, hhi⟩
  rcases hnf o ho a hlo hhi with ⟨o0, ho0, -, -, hlo0, hhi0⟩ | hf
  · exact hn ⟨o0, ho0, hlo0, hhi0⟩
  · exact fresh_not_alloc hp hp' hm hf ha

theorem scell_ext {C : Cfg} {Γ Γ' : Gam} (he : Ext Γ Γ') {a : BitVec 64} (h : SCell C Γ a) :
    SCell C Γ' a := by
  obtain ⟨o, ho, k, hk, hsc, rfl⟩ := h
  obtain ⟨o', ho', hb, ht, hs⟩ := he o ho
  refine ⟨o', ho', k, ?_, by rw [ht]; exact hsc, by unfold Obj.cell; rw [hb]⟩
  unfold Obj.HasSlot at *
  omega

theorem bufOK_ext {C : Cfg} {Γ Γ' : Gam} {p p' : Ptrs} (hp : p.Ordered) (hp' : p'.Ordered)
    (hm : p.Mono p') (he : Ext Γ Γ') (hnf : NewFresh Γ Γ' p p') {b n : Nat}
    (h : BufOK C Γ p b n) : BufOK C Γ' p' b n := by
  intro a ha
  rcases h a ha with hs | ⟨hn, hal⟩
  · exact Or.inl (scell_ext he hs)
  · exact Or.inr ⟨notInObj_after hp hp' hm hnf hn hal, alloc_mono hm hal⟩

end InitECandidate.Solver.MemSafe
