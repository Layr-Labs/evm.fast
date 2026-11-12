import InitECandidate.Solver.Spec.CodeState
import InitECandidate.Solver.Spec.Rlp

/-!
# The tick bound of `state_restore`

```
fun 1 state_restore(1 snap) {
  while journal_n >+ snap { journal_n = journal_n - 1; ...; htab_set(...) or htab_del(...) }
  return 0; }
```

The loop counter is the *global* `journal_n`, decremented once per iteration; the syntactic
analyzer cannot see that the callees `htab_set` / `htab_del` leave it alone. The global
footprint checker (`Spec/GlobalFree.lean`, instance `htab_gwClosed`) proves that neither
of them, nor anything they call, writes `journal_n` (`funSpec_gw`). So a completed
iteration lowers `journal_n` by one (`restoreLoop_dec`) and the loop makes at most `2 ^ 64`
iterations.

`state_restore_cost`: with costs `Bset`, `Bdel` of `htab_set`, `htab_del`,
`CalleeCost σ X "state_restore" (2 ^ 64 * (Bset + Bdel + 2))`.
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type} {X : Ctx 64}

/-- A word global as a number (`0` when absent or not a word). -/
def gwv (s : PanSemStateFiniteExact 64 σ) (x : MlS) : Nat :=
  match s.globals.lookup x with
  | some (.val (.word w)) => w.toNat
  | _ => 0

theorem gwv_of {s : PanSemStateFiniteExact 64 σ} {x : MlS} {w : BitVec 64}
    (h : s.globals.lookup x = some (.val (.word w))) : gwv s x = w.toNat := by
  unfold gwv; rw [h]

theorem gwv_congr {s t : PanSemStateFiniteExact 64 σ} {x : MlS}
    (h : t.globals.lookup x = s.globals.lookup x) : gwv t x = gwv s x := by
  unfold gwv; rw [h]

theorem gwv_le (s : PanSemStateFiniteExact 64 σ) (x : MlS) : gwv s x ≤ 2 ^ 64 - 1 := by
  unfold gwv
  split
  · rename_i w _; have := w.isLt; omega
  · omega

theorem gwClosed_X (hC : X.code.lookup = guestCode) : GwClosed jn htabNames X.code.lookup := by
  rw [hC]; exact htab_gwClosed

/-- A completed iteration lowers `journal_n` by one. -/
theorem restoreLoop_dec (hC : X.code.lookup = guestCode) (k : Nat) :
    Hoare σ X (fun s => True ∧ CondTrue s restoreCond ∧ gwv s jn = k) restoreLoopBody
      (fun r t => r = none ∨ r = some .continue → gwv t jn < k) := by
  have hset := funSpec_gw (σ := σ) (gwClosed_X hC) htab_set_mem
  have hdel := funSpec_gw (σ := σ) (gwClosed_X hC) htab_del_mem
  refine hoare_seq (R := fun r t => r = none ∧ gwv t jn < k) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assignK fun s _ ⟨_, ⟨w, hw, hw0⟩, hk⟩ v hv _ => ?_
    obtain ⟨S0, J, _, hJ, hlt⟩ := cmp_true hw hw0
    have hlt' := lower_true hlt
    rw [ev_sub2 hJ (ev_cw _ 1)] at hv
    cases hv
    have hJ' : s.globals.lookup jn = some (.val (.word J)) := hJ
    refine ⟨rfl, ?_⟩
    have h1 : (setKvarHOLFinite .global (nm "journal_n") (.val (.word (J - BitVec.ofNat 64 1))) s).globals.lookup jn =
        some (.val (.word (J - BitVec.ofNat 64 1))) := lookup_update_self _ _ _
    rw [gwv_of h1, ← hk, gwv_of hJ']
    bv_omega
  · -- the three declarations and the calls keep `journal_n`
    refine hoare_dec fun s _ hs _ _ _ => ?_
    refine hoare_conseq (P := fun t => gwv t jn < k) ?_ (fun t _ ht => by subst ht; exact hs.2)
      (fun _ _ _ _ h => h)
    refine hoare_dec fun s _ hs _ _ _ => ?_
    refine hoare_conseq (P := fun t => gwv t jn < k) ?_ (fun t _ ht => by subst ht; exact hs)
      (fun _ _ _ _ h => h)
    refine hoare_dec fun s _ hs _ _ _ => ?_
    refine hoare_conseq (P := fun t => gwv t jn < k) ?_ (fun t _ ht => by subst ht; exact hs)
      (fun _ _ _ _ h => h)
    refine hoare_ite ?_ ?_
    · exact hoare_callD hset fun u _ ⟨hu, _⟩ _ _ callee _ st hR _ _ =>
        lt_of_eq_of_lt (gwv_congr (s := callEntryStateHOLFinite u callee) hR) hu
    · exact hoare_callD hdel fun u _ ⟨hu, _⟩ _ _ callee _ st hR _ _ =>
        lt_of_eq_of_lt (gwv_congr (s := callEntryStateHOLFinite u callee) hR) hu

theorem restoreBody_cost (hC : X.code.lookup = guestCode) {Bset Bdel : Nat}
    (hset : CalleeCost σ X (nm "htab_set") Bset) (hdel : CalleeCost σ X (nm "htab_del") Bdel) :
    Cost σ X restoreBody (2 ^ 64 * (Bset + Bdel + 2)) := by
  have H := hdec_of_hoare (σ := σ) (X := X) (c := restoreCond) (body := restoreLoopBody)
    (fun s => gwv s jn) (fun _ => True) (fun _ => rfl) (fun _ h => h) (restoreLoop_dec hC)
  have hb : Cost σ X restoreLoopBody (0 + max (1 + Bset + 0) (1 + Bdel + 0)) :=
    cost_seq (cost_assign _ _ _) (cost_dec (cost_dec (cost_dec (cost_ite
      (cost_call (Bh := 0) hset (by intro _ _ _ _ h; cases h))
      (cost_call (Bh := 0) hdel (by intro _ _ _ _ h; cases h))))))
  have hw := cost_while (σ := σ) (X := X) (c := restoreCond) (fun s => gwv s jn) (2 ^ 64 - 1) hb
    (fun s _ _ => gwv_le s jn) (fun s hs hc _ hexit => H s hs hc trivial hexit)
  refine (cost_seq hw (cost_return _)).mono ?_
  rw [show 2 ^ 64 - 1 + 1 = 2 ^ 64 from rfl, Nat.add_zero]
  exact Nat.mul_le_mul_left _ (by omega)

/-- **Tick bound of `state_restore`**, given cost bounds of `htab_set` and `htab_del`. -/
theorem state_restore_cost (hC : X.code.lookup = guestCode) {Bset Bdel : Nat}
    (hset : CalleeCost σ X (nm "htab_set") Bset) (hdel : CalleeCost σ X (nm "htab_del") Bdel) :
    CalleeCost σ X (nm "state_restore") (2 ^ 64 * (Bset + Bdel + 2)) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_one code_state_restore hl
  exact restoreBody_cost hC hset hdel

end InitECandidate.Solver.Spec
