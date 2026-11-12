import InitECandidate.Solver.MemSafe.Ptx.PtP4

/-!
# F3f: the precompile loop (`ptS95`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem toNat_add_mul (a b : BitVec 64) (c n : Nat) (h : a.toNat + c * n < 2 ^ 64) (hb : b.toNat = n)
    (hc : c < 2 ^ 64) : (a + b * BitVec.ofNat 64 c).toNat = a.toNat + c * n := by
  rw [BitVec.toNat_add, BitVec.toNat_mul]
  simp only [BitVec.toNat_ofNat]
  rw [Nat.mod_eq_of_lt (a := c) hc, hb, Nat.mod_eq_of_lt (a := n * c) (by rw [Nat.mul_comm]; omega),
    Nat.mod_eq_of_lt (by rw [Nat.mul_comm]; omega)]
  rw [Nat.mul_comm]

theorem pa_weak {E : PtE σ} {En : Env} {S S' : FS} {u : State σ} (h : PA E En S' u) (hs : ∀ f, S f → S' f) :
    PA E En S u := pa_mono h (fun x v h => h) hs

/-- **The precompile loop**: `htab_set(aa, precompile_addrs + i * 20, 1)` for `i < 18`. -/
theorem pt_loopA {E : PtE σ} {En : Env} {S : FS} {aaw pav : BitVec 64}
    (haa : En (nm "aa") = some (.val (.word aaw))) (hoa : S (Fct.obj aaw tHTh20 0))
    (hop : S (Fct.obj pav tB360 360)) (hpp : S (Fct.prop (pav.toNat + 360 ≤ heapEnd)))
    (hglob : ∀ (En' : Env) (s : State σ), PA E En' S s →
      s.globals.lookup (nm "precompile_addrs") = some (.val (.word pav)))
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false) :
    Hoare σ guestCtx (PA E (En.set (nm "i") (.val (.word 0))) S) ptS95
      (fun r t => r = none ∧ PA E (En.set (nm "i") (.val (.word (BitVec.ofNat 64 18)))) S t) := by
  unfold ptS95
  refine hn_cloop (N := 18) ?_ ?_ (by norm_num) ?_
  · intro x s hxN hpa hc
    have := cond_lt_gen (evI_lv (hpa.2 _ _ (env_set_self _ _ _))) (evI_cw s 18) (by omega) (by simp) hc
    simpa using this
  · intro x s hxN hpa hc
    have := cond_lt_gen_false (evI_lv (hpa.2 _ _ (env_set_self _ _ _))) (evI_cw s 18) (by omega) (by simp) hc
    simpa using this
  · intro x hx
    have e_aa : (En.set (nm "i") (.val (.word x))) (nm "aa") = some (.val (.word aaw)) := by
      rw [env_set_ne _ _ (by decide)]; exact haa
    have e_i : (En.set (nm "i") (.val (.word x))) (nm "i") = some (.val (.word x)) := env_set_self _ _ _
    unfold ptS204 ptS205
    refine hghostF (Fct.bufok0 (pav + x * BitVec.ofNat 64 20) 20) ?_ ?_
    · intro s hpa D Γ p hr hL
      obtain ⟨o, ho, hob, hot, hos⟩ := hL _ hop
      have hbd : pav.toNat + 360 ≤ heapEnd := hL _ hpp
      have hb64 : heapEnd < 2 ^ 64 := by unfold heapEnd; norm_num
      have hn := toNat_add_mul pav x 20 x.toNat (by omega) rfl (by norm_num)
      refine bufok0_obj (ptRun_G hr) (ptRun_ptrs hr) ho (fun k => by rw [hot]; exact tb360_slot k) ?_ ?_
      · simp only [Obj.lo]; rw [hob, hn]; omega
      · simp only [Obj.hi]; rw [hob, hn]; omega
    · have h1 : HN (PA E (En.set (nm "i") (.val (.word x))) (addF S [Fct.bufok0 (pav + x * BitVec.ofNat 64 20) 20]))
          (callD (nm "htab_set") [lv (nm "aa"), .op .add [gv (nm "precompile_addrs"),
            .panop .mul [lv (nm "i"), cw 20]], cw 1])
          (PA E (En.set (nm "i") (.val (.word x))) (addF S [Fct.bufok0 (pav + x * BitVec.ofNat 64 20) 20])) := by
        refine hn_hset (th := tHTh20) (n := 20) (m := 20) (kw := pav + x * BitVec.ofNat 64 20) (csOK_htab_set tHTh20 (by decide)) tab_htab_set_20
          e_aa (Or.inl hoa) ?_ (Or.inr (by simp)) le_rfl (hgl_addF hGl (by simp))
        intro s hpa
        exact evI_add (evI_gv (hglob _ s (pa_weak hpa (fun f hf => Or.inl hf))))
          (evI_mul (evI_lv (hpa.2 _ _ e_i)) (evI_cw s 20))
      have h2 : HN (PA E (En.set (nm "i") (.val (.word x))) (addF S [Fct.bufok0 (pav + x * BitVec.ofNat 64 20) 20]))
          (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))
          (PA E (En.set (nm "i") (.val (.word (x + BitVec.ofNat 64 1)))) (addF S [Fct.bufok0 (pav + x * BitVec.ofNat 64 20) 20])) := by
        refine hn_post (hassignS (w' := x + BitVec.ofNat 64 1) ?_) (fun t _ h => by rwa [env_set_set] at h)
        intro s hpa v hv
        exact evI_add (evI_lv (hpa.2 _ _ e_i)) (evI_cw s 1) v hv
      refine hn_post (hn_seq h1 h2) ?_
      intro t _ h
      exact pa_mono h (fun x v h => h) (fun f hf => Or.inl hf)

end InitECandidate.Solver.MemSafe.Ptx
