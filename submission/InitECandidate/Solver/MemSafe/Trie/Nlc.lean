import InitECandidate.Solver.MemSafe.Trie.BeginG

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `nibble_list_to_compact`: the returned length

`nlc_ret`: a return is a word `o ≤ n / 2 + 1` (the cost layer's `foot_nibble_list_to_compact`, whose loop
invariant `NlcJ` carries `o = 1 + K`, `n mod 2 + 2 K ≤ n`).
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

theorem nlc_ret (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "nibble_list_to_compact") (fun vs s r t => Good (some r) →
      ∀ v, r = .returned v → ∀ NB N IL D : BitVec 64,
        vs = [.val (.word NB), .val (.word N), .val (.word IL), .val (.word D)] →
        ∃ o : BitVec 64, v = .val (.word o) ∧ o.toNat ≤ N.toNat / 2 + 1) := by
  intro vs body callee rs hl s0 hs hloc r hr hg v hv NB N IL D hvs
  rw [hC] at hl
  obtain ⟨rfl, A, B, C, Dv, rfl, -, -, -, -, hA, hB, hC', hD⟩ :=
    Dec.lookupCode_four' code_nibble_list_to_compact (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) hl
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl, rfl⟩ := hvs
  have hn0 : s0.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hB
  have hd0 : s0.locals.lookup (nm "dst") = some (.val (.word D)) := by rw [hloc]; exact hD
  have H : HoareG σ X (fun t => t = s0) nlcBody (fun r _ => ∀ v, r = some (.returned v) →
      ∃ o : BitVec 64, v = .val (.word o) ∧ o.toNat ≤ N.toNat / 2 + 1) := by
    refine hoareG_dec fun s1 _ hs1 v1 _ _ => ?_
    subst s1
    refine hoareG_dec fun s2 _ hs2 v2 hv2 _ => ?_
    subst hs2
    rw [ev_cw] at hv2
    cases hv2
    set t2 := setVarHOLFinite (nm "i") (.val (.word (BitVec.ofNat 64 0))) (setVarHOLFinite (nm "flag") v1 s0)
    have hd2 : t2.locals.lookup (nm "dst") = some (.val (.word D)) := by
      rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hd0
    have hn2 : t2.locals.lookup (nm "n") = some (.val (.word N)) := by
      rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hn0
    have hcnd : ev t2 (.cmp .equal (.op .and [lv (nm "n"), cw 1]) (cw 0)) =
        some (.val (.word (if wordCmpHOL .equal (BitVec.ofNat 64 (N.toNat % 2)) 0 then 1 else 0))) := by
      refine ev_cmp ?_ (ev_cw _ 0)
      rw [ev_op2 (ev_lv' hn2) (ev_cw _ 1), and1_val]
      rfl
    -- after the first byte and `i`: the loop state with `K = 0`, `o` not yet declared
    refine hoareG_seq (R := fun r t => r = none ∧ t.locals.lookup (nm "dst") = some (.val (.word D)) ∧
        t.locals.lookup (nm "n") = some (.val (.word N)) ∧
        t.locals.lookup (nm "i") = some (.val (.word (BitVec.ofNat 64 (N.toNat % 2)))) ∧
        t.globals = s0.globals ∧ MemSafe.ModifiesOnly (NlcR D N) s0.memory t.memory) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_ite ?_ ?_
      · refine MemSafe.hoareG_storeByte fun t _ ⟨ht, w, hw, hw0⟩ wd x mem hwd _ hst => ?_
        subst ht
        rw [hcnd] at hw
        simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
        subst hw
        have h0 : N.toNat % 2 = 0 := by
          by_contra hne
          apply hw0
          have hf : wordCmpHOL .equal (BitVec.ofNat 64 (N.toNat % 2)) 0 = false := by
            simp only [wordCmpHOL, beq_eq_false_iff_ne, ne_eq]
            intro h
            have := congrArg BitVec.toNat h
            simp only [BitVec.toNat_ofNat] at this
            have : (0 : BitVec 64).toNat = 0 := rfl
            omega
          rw [hf]
          rfl
        rw [ev_lv, hd2] at hwd
        cases hwd
        refine ⟨rfl, hd2, hn2, by rw [h0, lk_set_self], rfl, ?_⟩
        refine (MemSafe.Helpers.storeByte_mod hst).mono fun a ha => ⟨0, by omega, by rw [ha]; simp⟩
      · refine hoareG_seq (R := fun r t => r = none ∧ t.locals = t2.locals ∧
          t.globals = s0.globals ∧ MemSafe.ModifiesOnly (NlcR D N) s0.memory t.memory ∧
          N.toNat % 2 = 1) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
        · refine MemSafe.hoareG_storeByte fun t _ ⟨ht, hc⟩ wd x mem hwd _ hst => ?_
          subst ht
          rw [hcnd] at hc
          simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hc
          have h1 : N.toNat % 2 = 1 := by
            by_contra hne
            have h0 : N.toNat % 2 = 0 := by omega
            rw [h0, if_pos (by simp [wordCmpHOL])] at hc
            exact absurd hc (by decide)
          rw [ev_lv, hd2] at hwd
          cases hwd
          refine ⟨rfl, rfl, rfl, ?_, h1⟩
          refine (MemSafe.Helpers.storeByte_mod hst).mono fun a ha => ⟨0, by omega, by rw [ha]; simp⟩
        · refine hoareG_assign fun t _ ⟨_, hl2, hg2, hm2, h1⟩ v hv _ => ?_
          rw [ev_cw] at hv
          cases hv
          refine ⟨rfl, ?_, ?_, ?_, hg2, hm2⟩
          · rw [lk_set_ne _ _ (by decide), hl2]; exact hd2
          · rw [lk_set_ne _ _ (by decide), hl2]; exact hn2
          · rw [lk_set_self, h1]
    · refine hoareG_dec fun s3 _ ⟨_, hd3, hn3, hi3, hg3, hm3⟩ v3 hv3 _ => ?_
      rw [ev_cw] at hv3
      cases hv3
      refine hoareG_seq (R := fun r t => r = none ∧ NlcJ D N s0 t) ?_
        (fun _ _ _ hr _ h => absurd h.1 hr)
        (MemSafe.hoareG_return fun t _ ⟨_, _, _, ⟨K, _, ho, hK⟩, _, _⟩ w hw => fun v' hv' => by
          cases hv'
          rw [ev_lv' ho] at hw
          cases hw
          refine ⟨_, rfl, ?_⟩
          have := N.isLt
          rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
          omega)
      refine hoareG_pre (P := NlcJ D N s0) ?_ fun t _ ht => by
        subst ht
        refine ⟨?_, ?_, ⟨0, ?_, lk_set_self _ _ _, by omega⟩, hg3, hm3⟩
        · rw [lk_set_ne _ _ (by decide)]; exact hd3
        · rw [lk_set_ne _ _ (by decide)]; exact hn3
        · rw [lk_set_ne _ _ (by decide)]; simpa using hi3
      exact MemSafe.hoareG_while (fun _ h => h) (hoareG_conseq nlc_loop (fun _ _ h => h)
        fun _ _ _ _ ⟨hr, h⟩ => ⟨fun _ => h, (fun h' => by subst hr; cases h'),
          (fun h' => by subst hr; cases h'), (fun _ h' => by subst hr; cases h')⟩)
        fun _ _ h _ => ⟨rfl, h⟩
  have := H s0 hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  exact this v (by rw [hv])


end InitECandidate.Solver.MemSafe.Trie
