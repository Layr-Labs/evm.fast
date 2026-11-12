import InitECandidate.Solver.MemSafe.Wg.Wd6

/-!
# Wg: a byte store into a fresh block, and the buffers inside a fresh block
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

theorem hoare_storeByte {X : Ctx 64} {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop} {a e : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ w x mem, ev s a = some (.val (.word w)) → ev s e = some (.val (.word x)) →
      @panMemStoreByteWord8HOL 64 _ s.memory s.memaddrs (fun y => Classical.propDecidable (s.memaddrs y)) s.be w
        (BitVec.ofNat 8 x.toNat) = some mem → Q none { s with memory := mem }) :
    Hoare σ X P (.storeByte a e) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.storeByte a e)]
  dsimp only
  split
  · rename_i w hw
    split
    · rename_i x hx
      split
      · rename_i mem hmem
        intro _
        exact h s hs hp w x mem hw hx hmem
      · intro ht; exact absurd ht (by simp)
    · intro ht; exact absurd ht (by simp)
  · intro ht; exact absurd ht (by simp)

/-- A sub-range of a fresh block is a `BufOK` buffer. -/
theorem bufOK_of_fbuf_sub {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {w c : BitVec 64} {N m : Nat}
    (hr : ∃ s0 Γ0, EbRun Γ0 s0 p0 Γ u p) (h : (Fct.fbuf w N).holds p0 Γ p u) (h1 : w.toNat ≤ c.toNat)
    (h2 : c.toNat + m ≤ w.toNat + N) : BufOK guestC Γ p c.toNat m := by
  obtain ⟨s0, Γ0, hr⟩ := hr
  intro a ha
  right
  have hov : Overlap w.toNat N a := by
    obtain ⟨c8, c1, c2⟩ := ha
    exact ⟨c8, by omega, by omega⟩
  exact ⟨(h.2 a hov).2, (alloc_of_gfresh (ebRun_ord0 hr) (h.2 a hov).1).2.2⟩

section stbyte
variable {E : EbE σ} {En : Env} {S : FS}

/-- `st8 a, e;` into a fresh block: nothing of the typed heap changes. -/
theorem hn_stByteF {a e : ExpHOL 64} {blob : BitVec 64} {N : Nat} (hN : 1 ≤ N)
    (ha : ∀ s : State σ, PA E En S s → EvI s a (.val (.word blob))) (hfb : S (Fct.fbuf blob N)) :
    HN (PA E En S) (.storeByte a e) (PA E En S) := by
  refine hoare_storeByte fun s hs hpa w x mem hw hv hmem => ?_
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨Γ, p, hr, hL⟩, hlk⟩
  have hw' := ha s hpa _ hw
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw'
  subst hw'
  obtain ⟨hd, hmod⟩ := storeByte_cell hmem
  obtain ⟨hal, hfr⟩ := hL _ hfb
  have hal8 : panByteAlignHOL w = w := by
    apply BitVec.eq_of_toNat_eq
    rw [alignC_toNat]; omega
  rw [hal8] at hmod
  obtain ⟨q, hq, hord, hLay, -⟩ := ebRun_G hr
  obtain rfl : p = q := Option.some.inj ((ebRun_ptrs hr).symm.trans hq)
  have hout : ¬ InObj Γ w.toNat := (hfr w ⟨by omega, by omega⟩).2
  have hmem' : ∀ y : BitVec 64, InObj Γ y.toNat → mem y = s.memory y := by
    intro y hy
    have : y ≠ w := fun e => hout (e ▸ hy)
    exact hmod y this
  have hG' : G guestC (HR σ) Γ { s with memory := mem } :=
    G_frame Hooks.guestHooksR_lawful (ebRun_G hr) rfl (fun g k hk => rfl) (fun g hg => rfl) rfl rfl hmem'
  have hr' : EbRun E.Γ0 E.s0 E.p0 Γ { s with memory := mem } p := by
    obtain ⟨h1, h2, h3, h4, h5, h6, h9, h10, h11, h12⟩ := hr
    exact ⟨h1, (ptrsOf_congr rfl).trans h2, h3, h4, h5, hG', jrNZ_congr (s := s) rfl h9, h10, h11, h12⟩
  refine ⟨rfl, ⟨Γ, p, hr', ?_⟩, hlk⟩
  have hstep : StepD Γ p s Γ p { s with memory := mem } :=
    ⟨ebRun_ptrs hr, ebRun_ptrs hr', mono_g_refl (ebRun_ord hr), fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩,
      fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩, ebRun_G hr, ebRun_G hr'⟩
  refine holds_step hstep (ebRun_ord0 hr) ?_ (fun _ _ _ _ => rfl) (fun _ _ _ => rfl) hL
  intro f hf y hy
  have hin := reads_inObj hord hLay (hL f hf) hy
  have hne : y ≠ w := fun e => hout (e ▸ hin)
  exact hmem' y hin

end stbyte

end InitECandidate.Solver.MemSafe.Wg
