import InitECandidate.Solver.Spec.CodeWalk
import InitECandidate.Solver.Spec.CostInv
import InitECandidate.Solver.Spec.Rlp

/-!
# `trap_with` and `scratch_alloc`

* `funRet_trap_with`: `trap_with` never returns (three shared-memory stores and the
  `trap` FFI call complete normally or end the run; then it raises `TrapErr`).
* `funSpec_scratch_alloc`: a call `scratch_alloc(n)` that returns `q` started with word
  globals `scratch_ptr = P0`, `frame_mem_ptr = F0` with `n ≤ P0 - F0` (as words), and
  returns `q` with `q ≤ P0 - n` (the alignment mask only rounds down) and `F0 ≤ q`; it sets
  `scratch_ptr = q`, keeps `frame_mem_ptr`, and writes no memory (`AllocRet`).
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type} {X : Ctx 64}

theorem funRet_trap_with (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "trap_with") (fun _ _ => False) := by
  apply funRet_never_of
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_one code_trap_with hl
  refine hoare_seq (R := fun r _ => r = none) hoare_shMemStore_none
    (fun _ _ _ hr _ h => absurd h hr) ?_
  refine hoare_seq (R := fun r _ => r = none) hoare_shMemStore_none
    (fun _ _ _ hr _ h => absurd h hr) ?_
  refine hoare_seq (R := fun r _ => r = none) hoare_shMemStore_none
    (fun _ _ _ hr _ h => absurd h hr) ?_
  refine hoare_seq (R := fun r _ => r = none) hoare_extCall_none
    (fun _ _ _ hr _ h => absurd h hr) ?_
  exact hoare_raise

def spN : MlS := nm "scratch_ptr"
def fpN : MlS := nm "frame_mem_ptr"

/-- What a returning `scratch_alloc(n)` call did, from entry state `s0` to final state `t`. -/
def AllocRet (vs : List (ValueHOL 64)) (s0 : PanSemStateFiniteExact 64 σ) (v : ValueHOL 64)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ N P0 F0 Q : BitVec 64, vs = [.val (.word N)] ∧
    s0.globals.lookup spN = some (.val (.word P0)) ∧
    s0.globals.lookup fpN = some (.val (.word F0)) ∧ v = .val (.word Q) ∧
    t.globals.lookup spN = some (.val (.word Q)) ∧
    t.globals.lookup fpN = some (.val (.word F0)) ∧ t.memory = s0.memory ∧
    N.toNat ≤ (P0 - F0).toNat ∧ Q.toNat ≤ (P0 - N).toNat ∧ F0.toNat ≤ Q.toNat

theorem toNat_and_le (x y : BitVec 64) : (x &&& y).toNat ≤ x.toNat := by
  rw [BitVec.toNat_and]; exact Nat.and_le_left

theorem funSpec_scratch_alloc (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "scratch_alloc") (fun vs s r t => ∀ v, r = .returned v → AllocRet vs s v t) := by
  have hf := funRet_trap_with (σ := σ) hC
  apply funSpec_of_hoare
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA, hla⟩ := lookupCode_one code_scratch_alloc hl
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hA
  refine hoare_dec fun s _ hs v hv hsh => ?_
  subst hs
  obtain ⟨P0, rfl⟩ := val_of_shapeEq_one hsh
  have hsp : s.globals.lookup spN = some (.val (.word P0)) := hv
  have hn0 : s.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hla
  -- the facts that hold until the global assignment
  refine hoare_pre (P := fun t => t.locals.lookup (nm "p") = some (.val (.word P0)) ∧
      t.locals.lookup (nm "n") = some (.val (.word N)) ∧ t.globals = s.globals ∧
      t.memory = s.memory) ?_ ?_
  · refine hoare_guard_seq hf ?_
    refine hoare_dec fun t _ ⟨⟨hp, hn, hg, hm⟩, hc⟩ v hv hsh => ?_
    -- the first guard passed: `n ≤ p - frame_mem_ptr`
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    obtain ⟨P0', F0, hP0', hF0, rfl⟩ := ev_sub2_inv hx
    rw [ev_lw hp] at hP0'
    cases hP0'
    rw [ev_lw hn] at hy
    cases hy
    have hfp : s.globals.lookup fpN = some (.val (.word F0)) := by
      rw [← hg]; exact hF0
    have h1 := lower_false hxy
    -- the mask value
    have hval : ev t (.op .and [.op .sub [lv (nm "p"), lv (nm "n")], .op .sub [cw 0, cw 8]]) =
        some (.val (.word ((P0 - N) &&& ((BitVec.ofNat 64 0 - BitVec.ofNat 64 8) &&& ~~~0)))) := by
      rw [ev_op2 (ev_sub2 (ev_lw hp) (ev_lw hn)) (ev_sub2 (ev_cw _ 0) (ev_cw _ 8))]
      rfl
    rw [hval] at hv
    cases hv
    generalize hQ : (P0 - N) &&& ((BitVec.ofNat 64 0 - BitVec.ofNat 64 8) &&& ~~~0) = Q
    have hQle : Q.toNat ≤ (P0 - N).toNat := by rw [← hQ]; exact toNat_and_le _ _
    refine hoare_pre (P := fun u => u.locals.lookup (nm "q") = some (.val (.word Q)) ∧
        u.globals = s.globals ∧ u.memory = s.memory) ?_ ?_
    · refine hoare_guard_seq hf ?_
      refine hoare_seq (R := fun r u => r = none ∧
          u.locals.lookup (nm "q") = some (.val (.word Q)) ∧
          u.globals.lookup spN = some (.val (.word Q)) ∧
          u.globals.lookup fpN = some (.val (.word F0)) ∧ u.memory = s.memory ∧
          F0.toNat ≤ Q.toNat) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoare_assignK fun u _ ⟨⟨hq, hg', hm'⟩, hc2⟩ w hw _ => ?_
        rw [ev_lw hq] at hw
        cases hw
        obtain ⟨x2, y2, hx2, hy2, hxy2⟩ := cmp_false hc2
        rw [ev_lw hq] at hx2
        cases hx2
        have hy2' : u.globals.lookup fpN = some (.val (.word y2)) := hy2
        rw [hg', hfp] at hy2'
        cases hy2'
        refine ⟨rfl, hq, ?_, ?_, hm', lower_false hxy2⟩
        · show (u.globals.update (spN, _)).lookup spN = _
          exact lookup_update_self _ _ _
        · show (u.globals.update (spN, _)).lookup fpN = _
          rw [lookup_update_ne _ _ (by decide), hg']
          exact hfp
      · refine hoare_return fun u _ ⟨_, hq, hsp', hfp', hm', hFQ⟩ w hw => ?_
        rw [ev_lw hq] at hw
        cases hw
        intro v hv
        simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv
        subst hv
        exact ⟨N, P0, F0, Q, rfl, hsp, hfp, rfl, hsp', hfp', hm', h1, hQle, hFQ⟩
    · intro u _ hu
      subst hu
      exact ⟨lk_set_self _ _ _, hg, hm⟩
  · intro t _ ht
    subst ht
    exact ⟨lk_set_self _ _ _, by rw [lk_set_ne _ _ (by decide)]; exact hn0, rfl, rfl⟩

end InitECandidate.Solver.Spec
