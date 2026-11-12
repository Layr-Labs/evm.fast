import InitECandidate.Solver.MemSafe.D0.Sd8

/-!
# `set_delegation`: the loop
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- The loop's tracked typing facts: the two tables and the authorization array. -/
def LBp (W S A N : BitVec 64) (Γ : Gam) (_ : Ptrs) : Prop :=
  Fits Γ (.ptr tHTh20) W ∧ Fits Γ (.ptr tHTh20) S ∧ Hooks.SubArr Γ A N.toNat tAUTH 120

theorem lbp_mono {W S A N : BitVec 64} : BMono (Hooks.guestHooksR (σ := σ)) (LBp W S A N) :=
  fun _ _ _ _ _ _ _ _ hrun ⟨h1, h2, h3⟩ =>
    ⟨fits_ext hrun.2.2.2.1 h1, fits_ext hrun.2.2.2.1 h2, Hooks.subArr_ext hrun.2.2.2.1 h3⟩

/-- `N.toNat * 120 ≤ heapEnd` when the array is non-empty, so `N < 2^63`. -/
theorem subArr_small {Γ : Gam} {A N : BitVec 64} (h : Hooks.SubArr Γ A N.toNat tAUTH 120) :
    N.toNat < 2 ^ 63 := by
  rcases h with h | ⟨x, hx, hb, ht, hsz, hhe⟩
  · omega
  · have : heapEnd < 2 ^ 63 := by decide
    omega

theorem slt_lt {I N : BitVec 64} (hI : I.toNat ≤ N.toNat) (hN : N.toNat < 2 ^ 63)
    (h : Compiler.Encoders.Asm.wordCmpHOL .less I N = true) : I.toNat < N.toNat := by
  simp only [Compiler.Encoders.Asm.wordCmpHOL, Compiler.Encoders.Asm.holAsmSignedLess] at h
  have h1 : I.toNat < 2 ^ (64 - 1) := by simp; omega
  have h2 : N.toNat < 2 ^ (64 - 1) := by simpa using hN
  rw [if_pos h1, if_pos h2] at h
  simpa using h

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
local notation "gwJ" => [Hooks.gJn]
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

/-- **The loop.** -/
theorem sd_loop (hRA : RaH σ) (hSC : SetCodeH σ) (hfs : fs = (e, c) :: rest)
    {W S A N : BitVec 64} {xs0 : List (MlS × ValueHOL 64)}
    (hxW : xs0.lookup (nm "written") = some (.val (.word W)))
    (hxS : xs0.lookup (nm "set_for") = some (.val (.word S)))
    (hxA : xs0.lookup (nm "auths") = some (.val (.word A)))
    (hxN : xs0.lookup (nm "n") = some (.val (.word N))) (hfr : IterFresh xs0) :
    HoareG σ guestCtx
      (fun t => KPd HJ gwJ Γ0 s0 p0 fs e mg t (LBp W S A N) ∧
        ∃ I : BitVec 64, I.toNat ≤ N.toNat ∧ LA t.locals ((nm "i", .val (.word I)) :: xs0))
      (.while (.cmp .less (lv (nm "i")) (lv (nm "n"))) sdIter)
      (PLQ (fun t => KPd HJ gwJ Γ0 s0 p0 fs e mg t (LBp W S A N))
        (fun L => ∃ I : BitVec 64, LA L ((nm "i", .val (.word I)) :: xs0))) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  refine plq_while (Pl := fun L => ∃ I : BitVec 64, I.toNat ≤ N.toNat ∧ LA L ((nm "i", .val (.word I)) :: xs0))
    (K := fun t => KPd HJ gwJ Γ0 s0 p0 fs e mg t (LBp W S A N))
    (fun s hs => kpd_same hH hs rfl rfl rfl rfl) ?_ ?_
  · intro u hK ⟨I, hIle, hl⟩ hc
    obtain ⟨w, hw, hne⟩ := hc
    obtain ⟨x, y, hx, hy, hcmp⟩ := cmp_true hw hne
    have hi : u.locals.lookup (nm "i") = some (.val (.word I)) := la_lookup hl (by simp [List.lookup])
    have hn : u.locals.lookup (nm "n") = some (.val (.word N)) :=
      la_lookup hl (by rw [lk_cons_ne (by decide)]; exact hxN)
    rw [ev_lv_eq hi] at hx; rw [ev_lv_eq hn] at hy
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hx hy
    subst hx hy
    obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112, hB⟩ := hK
    have hIN : I.toNat < N.toNat := slt_lt hIle (subArr_small hB.2.2) hcmp
    refine hoareG_conseq (Q := PLQ (fun t => KPd HJ gwJ Γ0 s0 p0 fs e mg t (LBp W S A N))
      (fun L => ∃ I : BitVec 64, I.toNat ≤ N.toNat ∧ LA L ((nm "i", .val (.word I)) :: xs0))) ?_
      (fun _ _ h => h) (fun _ _ _ _ h => h)
    refine hoareG_rebaseQ (lbp_mono) ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112, hB⟩ ?_
    intro Γ1' p1' hrun' hB' hp' hG' hself
    refine hoareG_conseq (Q := PLQ (KP HJ gwJ Γ1' u p1' fs e mg)
      (fun L => LA L ((nm "i", .val (.word (I + BitVec.ofNat 64 1))) :: xs0))) ?_ (fun _ _ h => h)
      (fun ro t _ _ h => plq_mono (fun t ht => ht) (fun L hL => ⟨I + BitVec.ofNat 64 1, ?_, hL⟩) h)
    · exact sd_iter hRA hSC hfs hself hG' hxW hxS hxA hfr hl hB'.1 hB'.2.1 hB'.2.2 hIN
    · rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by decide : 1 < 2 ^ 64)]
      have := I.isLt
      rw [Nat.mod_eq_of_lt (by omega)]; omega
  · intro u hK ⟨I, hIle, hl⟩ hz
    exact ⟨I, hl⟩

end

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.sd_loop
