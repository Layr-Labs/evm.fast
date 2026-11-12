import InitECandidate.Solver.Spec.Inv.HtabNew

/-!
# `htab_new_scratch`: certified code, and the empty table for any disjoint layout

* `code_htab_new_scratch`: the body is `htab_new`'s with `scratch_alloc` for `alloc`
  (`newBodyS`).
* `newMem_wfD`: `newMem_wf` for four aligned, non-wrapping, pairwise disjoint blocks (the
  scratch allocator hands them out downwards, so they are not back to back above the header).
-/

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def newArraysS : ProgHOL 64 :=
  .decCall (nm "keys") .one (nm "scratch_alloc") [szE (lv (nm "stride"))]
    (.seq (.store (tAddr 32) (lv (nm "keys")))
      (.decCall (nm "nodes") .one (nm "scratch_alloc") [szE (cw 32)]
        (.seq (.store (tAddr 40) (lv (nm "nodes")))
          (.decCall (nm "order") .one (nm "scratch_alloc") [szE (cw 8)] newTail))))

def newBodyS : ProgHOL 64 :=
  .decCall (nm "t") .one (nm "scratch_alloc") [cw 88]
    (.dec (nm "stride") .one (.op .and [.op .add [lv (nm "key_len"), cw 7], .op .sub [cw 0, cw 8]])
      (.dec (nm "ncap") .one (lv (nm "cap"))
        (.seq (.ite (.cmp .lower (lv (nm "ncap")) (cw 2)) (.assign .local (nm "ncap") (cw 2)) .skip)
          (.seq (.store (tAddr 0) (lv (nm "key_len")))
            (.seq (.store (tAddr 8) (lv (nm "stride")))
              (.seq (.store (tAddr 16) (lv (nm "cap")))
                (.seq (.store (tAddr 24) (cw 0)) newArraysS)))))))

theorem entry_htab_new_scratch : fnEntry Guest.Software.guestFn_htab_new_scratch =
    (nm "htab_new_scratch", newParams, newBodyS, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_htab_new_scratch :
    guestCode (nm "htab_new_scratch") = some (newParams, newBodyS, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 129) (by decide)) ⟨_, rfl⟩
    entry_htab_new_scratch

/-- **The new table is well formed and empty** for any aligned, non-wrapping, pairwise
disjoint layout of the header and the three arrays. -/
theorem newMem_wfD {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T KL S CP C K N O : BitVec 64}
    (h8 : T.toNat % 8 = 0) (hK8 : K.toNat % 8 = 0) (hN8 : N.toNat % 8 = 0) (hO8 : O.toNat % 8 = 0)
    (hS8 : S.toNat % 8 = 0) (hKL : KL.toNat ≤ S.toNat) (hC : 2 ≤ C.toNat) (hSb : S.toNat ≤ 2 ^ 20)
    (hCb : C.toNat ≤ 2 ^ 32) (ht : T.toNat + 88 ≤ 2 ^ 64)
    (hNw : N.toNat + 32 * (C.toNat + 1) ≤ 2 ^ 64) (hOw : O.toNat + 8 * (C.toNat + 1) ≤ 2 ^ 64)
    (hKw : K.toNat + S.toNat * (C.toNat + 1) ≤ 2 ^ 64)
    (dTN : Disj T.toNat 88 N.toNat (32 * (C.toNat + 1))) (dTO : Disj T.toNat 88 O.toNat (8 * (C.toNat + 1)))
    (dTK : Disj T.toNat 88 K.toNat (S.toNat * (C.toNat + 1)))
    (dNO : Disj N.toNat (32 * (C.toNat + 1)) O.toNat (8 * (C.toNat + 1)))
    (dNK : Disj N.toNat (32 * (C.toNat + 1)) K.toNat (S.toNat * (C.toNat + 1)))
    (dOK : Disj O.toNat (8 * (C.toNat + 1)) K.toNat (S.toNat * (C.toNat + 1))) :
    Sep (newMem m T KL S CP C K N O) T ∧
      Shape (newMem m T KL S CP C K N O) d be T (fun _ => False) ∧
      Extra (newMem m T KL S CP C K N O) d be T (fun _ => False) ∧
      CNT (newMem m T KL S CP C K N O) T = 0 ∧ hdr (newMem m T KL S CP C K N O) T 0 = KL ∧
      (∀ a, TableRegion (newMem m T KL S CP C K N O) T a ↔
        InR a T 88 ∨ InR a N (32 * (C.toNat + 1)) ∨ InR a O (8 * (C.toNat + 1)) ∨
          InR a K (S.toNat * (C.toNat + 1))) := by
  have H := fun k hk => newMem_hdr (m := m) (KL := KL) (S := S) (CP := CP) (C := C) (K := K)
    (N := N) (O := O) ht k hk
  have e0 := H 0 (by decide); have e8 := H 8 (by decide); have e24 := H 24 (by decide)
  have e32 := H 32 (by decide); have e40 := H 40 (by decide); have e48 := H 48 (by decide)
  have e56 := H 56 (by decide); have e64 := H 64 (by decide); have e72 := H 72 (by decide)
  have e80 := H 80 (by decide)
  simp only [if_true, if_false, show ¬ ((0 : Nat) = 80) by decide] at e0 e8 e24 e32 e40 e48 e56 e64 e72 e80
  simp (config := {decide := true}) only [if_true, if_false] at e0 e8 e24 e32 e40 e48 e56 e64 e72 e80
  have hcap : CAP (newMem m T KL S CP C K N O) T = C.toNat := by unfold CAP; rw [e80]
  have hcnt : CNT (newMem m T KL S CP C K N O) T = 0 := by unfold CNT; rw [e24]; rfl
  refine ⟨?_, ⟨?_, fun _ h => h.elim, fun _ _ h => h, fun h => absurd e56 h, fun _ h => h.elim,
    fun _ h => h.elim, fun j hj => by rw [hcnt] at hj; exact absurd hj (Nat.not_lt_zero _),
    fun _ h => h.elim, fun j hj => by rw [hcnt] at hj; exact absurd hj (Nat.not_lt_zero _),
    fun _ h => h.elim⟩, ⟨?_, ?_, fun _ h => h.elim, ⟨[], ?_, List.nodup_nil, fun _ h => (by cases h),
    ?_⟩, fun _ h => h.elim, ?_⟩, hcnt, e0, ?_⟩
  · unfold Sep
    rw [e0, e8, e32, e40, e48, hcap]
    exact ⟨h8, hN8, hO8, hK8, hS8, hKL, ht, hNw, hOw, hKw, dTN, dTO, dTK, dNO, dNK, dOK⟩
  · rw [hcnt, hcap]; omega
  · unfold NX; rw [e64]; decide
  · unfold NX; rw [e64, hcap]; simp
  · show hdr _ T 72 = 0; exact e72
  · unfold NX; rw [hcnt, e64]; decide
  · rw [e8, hcap]; exact ⟨hSb, by omega, hCb⟩
  · intro a
    unfold TableRegion
    rw [e40, e48, e32, e8, hcap]

end InitECandidate.Solver.Spec.Inv
