import InitECandidate.Solver.MemSafe.Frames.EvSum
import InitECandidate.Solver.MemSafe.Helpers.Pure

/-!
# Constructing frame records: requirements and `G` lemmas

* `DrvCfg C H tEV tCK`: `FrameCfg` plus what pushing a frame needs of the configuration:
  hooks survive growth of `Γ` (`HooksMonoF`, the same statement as ms-struct's `HooksMono`),
  CK records have trivial, untagged hooks and exactly `CK_SIZE` bytes minimum, the typed globals
  `ev` / `cur_cont` (if typed) point at EV / CK objects (`ptr` or `nptr`), hooks do not depend on
  `ev` / `cur_cont`, and the allocator globals are neither typed nor protected.
* `G_addObj`: `G` survives adding a fresh, disjoint object whose slots all fit (here: all
  `prot`) and whose hook is trivial.
* `G_setEvCC`: `G` survives setting `ev` / `cur_cont` to bases of EV / CK objects.
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- Hooks survive growth of `Γ`: the central `HooksMono` of `Summary.lean` (rev. 5). -/
abbrev HooksMonoF (C : Cfg) (H : Hooks σ) : Prop := HooksMono C H

/-- **Requirements for pushing frames.** -/
structure DrvCfg (C : Cfg) (H : Hooks σ) (tEV tCK : Nat) : Prop where
  fc : FrameCfg C H tEV tCK
  mono : HooksMonoF C H
  ckWf : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tCK → H.wf Γ s o
  ckTag : C.tags.lookup tCK = none
  ckMin : (C.ty tCK).minSz ≤ 104
  ckRegion : (C.ty tCK).region = .scratch
  evGT : ∀ k, C.GT.lookup nmEv = some k → k = .ptr tEV ∨ k = .nptr tEV
  ccGT : ∀ k, C.GT.lookup nmCC = some k → k = .ptr tCK ∨ k = .nptr tCK
  hookGlob : ∀ (Γ : Gam) (s t : State σ) (o : Obj), H.wf Γ s o → t.memory = s.memory →
    t.memaddrs = s.memaddrs → t.be = s.be →
    (∀ g ∈ C.PG, g ≠ nmEv → g ≠ nmCC → t.globals.lookup g = s.globals.lookup g) → H.wf Γ t o
  allocG : Helpers.AllocGlobs C

/-! ## Adding an object -/

theorem fits_append {Γ : Gam} {x : Obj} {k : FK} {v : BitVec 64} (h : Fits Γ k v) :
    Fits (Γ ++ [x]) k v := by
  cases k with
  | scalar => trivial
  | prot => trivial
  | bnd => exact h
  | ptr t => obtain ⟨o, ho, h1, h2⟩ := h; exact ⟨o, List.mem_append_left _ ho, h1, h2⟩
  | nptr t =>
      rcases h with h | ⟨o, ho, h1, h2⟩
      · exact Or.inl h
      · exact Or.inr ⟨o, List.mem_append_left _ ho, h1, h2⟩
  | uptr ts =>
      rcases h with h | ⟨o, ho, h1, h2⟩
      · exact Or.inl h
      · exact Or.inr ⟨o, List.mem_append_left _ ho, h1, h2⟩

theorem ext_append (Γ : Gam) (x : Obj) : Ext Γ (Γ ++ [x]) :=
  fun o ho => ⟨o, List.mem_append_left _ ho, rfl, rfl, le_refl _⟩

/-- Two byte ranges without a common byte are disjoint (both below `2^64`). -/
theorem range_disj {lo hi lo' hi' : Nat} (h1 : lo < hi) (h2 : lo' < hi') (hb : hi ≤ 2 ^ 64)
    (hb' : hi' ≤ 2 ^ 64)
    (h : ∀ a : BitVec 64, lo ≤ a.toNat → a.toNat < hi → ¬ (lo' ≤ a.toNat ∧ a.toNat < hi')) :
    hi ≤ lo' ∨ hi' ≤ lo := by
  by_contra hc
  simp only [not_or, Nat.not_le] at hc
  have := h (BitVec.ofNat 64 (max lo lo'))
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)] at this
  exact this (by omega) (by omega) ⟨by omega, by omega⟩

/-- **`G` with a fresh object added.** -/
theorem G_addObj {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hM : HooksMonoF C H)
    {Γ : Gam} {s : State σ} (hG : G C H Γ s) {x : Obj} (hal : x.lo % 8 = 0) (hsz8 : x.size % 8 = 0)
    (hpos : 0 < x.size) (hmin : (C.ty x.ty).minSz ≤ x.size)
    (hlive : ∀ p, ptrsOf s = some p → (C.ty x.ty).region.Live p x.lo x.size)
    (hdisj : ∀ a : BitVec 64, InO x a → ¬ InObj Γ a.toNat)
    (hfit : ∀ k, x.HasSlot k → Fits (Γ ++ [x]) ((C.ty x.ty).slot k) (rd s.memory (x.cell k)))
    (htag : C.tags.lookup x.ty = none) (hwf : H.wf (Γ ++ [x]) s x) :
    G C H (Γ ++ [x]) s := by
  obtain ⟨p, hps, hord, hL, hF, hT, hGl, hW⟩ := hG
  have hxe : x.hi ≤ scratchEnd := by
    have := hlive p hps
    unfold Obj.lo at this
    unfold Ptrs.Ordered at hord
    unfold Obj.hi
    cases hr : (C.ty x.ty).region <;> rw [hr] at this <;> unfold Region.Live at this <;> omega
  have hs : scratchEnd < 2 ^ 64 := by decide
  have hL' : Layout C p (Γ ++ [x]) := by
    refine ⟨fun o ho => ?_, fun i j hi hj hij => ?_⟩
    · rcases List.mem_append.mp ho with ho | ho
      · exact hL.1 o ho
      · simp only [List.mem_singleton] at ho
        subst ho
        exact ⟨hal, hsz8, hpos, hmin, hlive p hps⟩
    · have hlen : (Γ ++ [x]).length = Γ.length + 1 := by simp
      -- the new object is the last one
      have hdx : ∀ o ∈ Γ, o.hi ≤ x.lo ∨ x.hi ≤ o.lo := by
        intro o ho
        have ho' := (hL.1 o ho).2.2.1
        have hoe := obj_hi hord hL ho
        have := range_disj (lo := x.lo) (hi := x.hi) (lo' := o.lo) (hi' := o.hi)
          (by unfold Obj.hi Obj.lo; omega) (by unfold Obj.hi Obj.lo; omega) (by omega) (by omega)
          (fun a h1 h2 h3 => hdisj a ⟨h1, h2⟩ ⟨o, ho, h3.1, h3.2⟩)
        rcases this with h | h
        · exact Or.inr h
        · exact Or.inl h
      by_cases hi' : i < Γ.length <;> by_cases hj' : j < Γ.length
      · rw [List.getElem_append_left hi', List.getElem_append_left hj']
        exact hL.2 i j hi' hj' hij
      · have hj2 : j = Γ.length := by omega
        subst hj2
        rw [List.getElem_append_left hi', List.getElem_append_right (by omega)]
        simp only [Nat.sub_self, List.getElem_cons_zero]
        exact hdx _ (List.getElem_mem hi')
      · have hi2 : i = Γ.length := by omega
        subst hi2
        rw [List.getElem_append_left hj', List.getElem_append_right (by omega)]
        simp only [Nat.sub_self, List.getElem_cons_zero]
        exact (hdx _ (List.getElem_mem hj')).symm
      · omega
  refine ⟨p, hps, hord, hL', ?_, ?_, ?_, ?_⟩
  · intro o ho k hk
    rcases List.mem_append.mp ho with ho | ho
    · exact fits_append (hF o ho k hk)
    · simp only [List.mem_singleton] at ho; subst ho; exact hfit k hk
  · intro o ho tag ht
    rcases List.mem_append.mp ho with ho | ho
    · exact hT o ho tag ht
    · simp only [List.mem_singleton] at ho; subst ho; rw [htag] at ht; cases ht
  · intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    exact ⟨v, hv, fits_append hf⟩
  · intro o ho
    rcases List.mem_append.mp ho with ho | ho
    · exact hM Γ (Γ ++ [x]) s p o o hL' (ext_append Γ x) ho (List.mem_append_left _ ho) rfl rfl
        (hW o ho)
    · simp only [List.mem_singleton] at ho; subst ho; exact hwf

/-! ## Switching the running frame -/

/-- **`G` with `ev` / `cur_cont` set** to the bases of an EV and a CK object of `Γ`. -/
theorem G_setEvCC {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hD : DrvCfg C H tEV tCK) {Γ : Gam}
    {s t : State σ} (hG : G C H Γ s) {e c : BitVec 64} (he : ∃ o ∈ Γ, o.base = e ∧ o.ty = tEV)
    (hc : ∃ o ∈ Γ, o.base = c ∧ o.ty = tCK) (hm : t.memory = s.memory)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hge : t.globals.lookup nmEv = some (.val (.word e)))
    (hgc : t.globals.lookup nmCC = some (.val (.word c)))
    (hgo : ∀ g, g ≠ nmEv → g ≠ nmCC → t.globals.lookup g = s.globals.lookup g) : G C H Γ t := by
  obtain ⟨p, hps, hord, hL, hF, hT, hGl, hW⟩ := hG
  have hp : ptrsOf t = ptrsOf s := by
    have hne : ∀ g, g = gHeap ∨ g = gFrame ∨ g = gScratch → g ≠ nmEv ∧ g ≠ nmCC := by
      rintro g (rfl | rfl | rfl) <;> exact ⟨by decide, by decide⟩
    unfold ptrsOf gword
    rw [hgo _ (hne gHeap (Or.inl rfl)).1 (hne gHeap (Or.inl rfl)).2,
      hgo _ (hne gFrame (Or.inr (Or.inl rfl))).1 (hne gFrame (Or.inr (Or.inl rfl))).2,
      hgo _ (hne gScratch (Or.inr (Or.inr rfl))).1 (hne gScratch (Or.inr (Or.inr rfl))).2]
  refine ⟨p, hp ▸ hps, hord, hL, hm ▸ hF, hm ▸ hT, ?_, ?_⟩
  · intro g k hk
    by_cases h1 : g = nmEv
    · subst h1
      refine ⟨e, gword_of hge, ?_⟩
      obtain ⟨o, ho, hb, ht⟩ := he
      rcases hD.evGT k hk with rfl | rfl
      · exact ⟨o, ho, hb, ht⟩
      · exact Or.inr ⟨o, ho, hb, ht⟩
    by_cases h2 : g = nmCC
    · subst h2
      refine ⟨c, gword_of hgc, ?_⟩
      obtain ⟨o, ho, hb, ht⟩ := hc
      rcases hD.ccGT k hk with rfl | rfl
      · exact ⟨o, ho, hb, ht⟩
      · exact Or.inr ⟨o, ho, hb, ht⟩
    · obtain ⟨v, hv, hf⟩ := hGl g k hk
      refine ⟨v, ?_, hf⟩
      unfold gword at hv ⊢
      rw [hgo g h1 h2]
      exact hv
  · intro o ho
    exact hD.hookGlob Γ s t o (hW o ho) hm hd hbe (fun g _ h1 h2 => hgo g h1 h2)

end InitECandidate.Solver.MemSafe.Frames
