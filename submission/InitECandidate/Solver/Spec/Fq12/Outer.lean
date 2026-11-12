import InitECandidate.Solver.Spec.Fq12.CH

/-!
# The outer loop of `fq12_inv`

Invariant `Iout`: the six buffer locals hold pairwise disjoint buffers. Measure `muOut`:
`degM` of the degree of the buffer in `r1` (`degOf`). One iteration divides `r0` by `r1`
(degree `d1 ≥ 1`), leaving a remainder of degree `< d1` in `r0`; the cofactor loop and
the copy only write `tmp`; then `r0` and `r1` swap, so the measure drops.
-/

set_option linter.unusedSimpArgs false

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The degree of the buffer at `x`, as `degM` (`0` if no degree is readable). -/
noncomputable def degOf (s : PanSemStateFiniteExact 64 σ) (x : BitVec 64) : Nat :=
  @dite _ (∃ d, DegFacts s x d) (Classical.propDecidable _) (fun h => degM (Classical.choose h))
    (fun _ => 0)

theorem degOf_eq {s : PanSemStateFiniteExact 64 σ} {x d : BitVec 64} (h : DegFacts s x d) :
    degOf s x = degM d := by
  unfold degOf
  rw [dif_pos ⟨d, h⟩]
  rw [degFacts_unique (Classical.choose_spec (⟨d, h⟩ : ∃ d, DegFacts s x d)) h]

def Pw (b : Bufs) : Prop := List.Pairwise Disj [b.R0, b.R1, b.S0, b.S1, b.Qb, b.TM]

def Iout (s : PanSemStateFiniteExact 64 σ) : Prop := ∃ b : Bufs, BufLk b s ∧ Pw b

noncomputable def muOut (s : PanSemStateFiniteExact 64 σ) : Nat :=
  match s.locals.lookup (nm "r1") with
  | some (.val (.word x)) => degOf s x
  | _ => 0

theorem muOut_eq {s : PanSemStateFiniteExact 64 σ} {x d : BitVec 64}
    (hx : s.locals.lookup (nm "r1") = some (.val (.word x))) (h : DegFacts s x d) :
    muOut s = degM d := by
  unfold muOut; rw [hx]; exact degOf_eq h

theorem pw_swap {b : Bufs} (h : Pw b) : Pw ⟨b.R1, b.R0, b.S1, b.TM, b.Qb, b.S0⟩ := by
  unfold Pw at h ⊢
  have p1 : List.Perm [b.R0, b.R1, b.S0, b.S1, b.Qb, b.TM] [b.R1, b.R0, b.S0, b.S1, b.Qb, b.TM] :=
    List.Perm.swap b.R1 b.R0 _
  have a1 : List.Perm [b.S0, b.S1, b.Qb, b.TM] [b.S1, b.S0, b.Qb, b.TM] := List.Perm.swap b.S1 b.S0 _
  have b1 : List.Perm [b.S0, b.Qb, b.TM] [b.Qb, b.S0, b.TM] := List.Perm.swap b.Qb b.S0 _
  have b2 : List.Perm [b.Qb, b.S0, b.TM] [b.Qb, b.TM, b.S0] := List.Perm.cons b.Qb (List.Perm.swap b.TM b.S0 _)
  have b3 : List.Perm [b.Qb, b.TM, b.S0] [b.TM, b.Qb, b.S0] := List.Perm.swap b.TM b.Qb _
  have p2 : List.Perm [b.S0, b.S1, b.Qb, b.TM] [b.S1, b.TM, b.Qb, b.S0] :=
    a1.trans (List.Perm.cons b.S1 (b1.trans (b2.trans b3)))
  exact h.perm (p1.trans (List.Perm.cons b.R1 (List.Perm.cons b.R0 p2))) (fun {_ _} hxy => Disj.symm hxy)

/-- The exit facts of the division loop. -/
def ExitI (g : IG) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  InF g t ∧ ∃ D, t.locals.lookup (nm "d0") = some (.val (.word D)) ∧ DegFacts t g.R0 D ∧
    (D = 0 - 1 ∨ D.toNat < g.D1.toNat)

theorem inner_hoare (hC : X.code.lookup = guestCode) (g : IG) :
    Hoare σ X (InI g) innerLoop (fun r t => r = none ∧ ExitI g t) := by
  refine hoare_while (fun s h => h) ?_ ?_
  · intro s hs ⟨hI, hc⟩ ht
    obtain ⟨D, hd0, hdeg, hci⟩ := inner_hyps hI
    obtain ⟨hDn, hDle⟩ := hci.mp hc
    obtain ⟨hr, hP⟩ := inner_step hC g D s hI.1 hd0 hDle (degFacts_lt hdeg hDn) s hs rfl ht
    have hI' := (step_analysis hI hd0 hDn hDle hP).1
    rw [hr]
    exact ⟨fun _ => hI', nofun, nofun, fun _ => nofun⟩
  · intro s _ hI hc
    obtain ⟨D, hd0, hdeg, hci⟩ := inner_hyps hI
    refine ⟨rfl, hI.1, D, hd0, hdeg, ?_⟩
    by_contra hn
    simp only [not_or, not_lt] at hn
    obtain ⟨w, hw, hw0⟩ := hci.mpr ⟨hn.1, hn.2⟩
    have h2 : (some (ValueHOL.val (HolWordLab.word (0 : BitVec 64))) : Option (ValueHOL 64)) =
        some (.val (.word w)) := hc.symm.trans hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h2
    exact hw0 h2.symm

theorem inner_ch (hC : X.code.lookup = guestCode) (g : IG) {Bmul Bsm Bdeg : Nat}
    (hmul : CalleeCost σ X (nm "fq_mul") Bmul) (hsm : CalleeCost σ X (nm "fq_poly_submul") Bsm)
    (hdg : CalleeCost σ X (nm "fq_poly_deg") Bdeg) {ef : MlS → Bool} (hef : EfSound σ X.code ef)
    (he1 : ef (nm "fq_mul") = true) (he2 : ef (nm "fq_poly_submul") = true)
    (he3 : ef (nm "fq_poly_deg") = true) :
    CH σ X (InI g) innerLoop ((13 + 1) * (innerB Bmul Bsm Bdeg + 1))
      (fun r t => r = none ∧ ExitI g t) :=
  ⟨inner_cost hC g hmul hsm hdg hef he1 he2 he3, inner_hoare hC g⟩

end InitECandidate.Solver.Spec.Fq12
