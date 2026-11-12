import InitECandidate.Solver.MemSafe.Ini.SiMain

/-!
# `state_init`: adopting the four raw blocks
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Trie
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.Wit

variable {σ : Type}

theorem b64_scalar : ∀ k, (Types.guestC.ty Types.tB64).slot k = .scalar :=
  Types.slot_all (by decide) (by decide)

theorem recTy_BS : RecTyOK Types.tBS := by decide
theorem recTy_B64 : RecTyOK Types.tB64 := by decide

theorem wf_plain {t : Nat} (hr : RecTyOK t) (hn : t ∉ recTys) {Γ : Gam} {s : State σ} {o : Obj} (ht : o.ty = t) :
    (guestHooksR (σ := σ)).wf Γ s o :=
  recHooks_guestR.make Γ s o (ht ▸ hr) fun e he het => by
    have hm := recTab_ty he
    rw [het, ht] at hm
    exact absurd hm hn

theorem wf_jr {Γ : Gam} {s : State σ} {o : Obj} (ht : o.ty = Types.tJOURNAL)
    (hj : jrW Γ s o) : (guestHooksR (σ := σ)).wf Γ s o := by
  refine ⟨⟨⟨?_, fun _ => hj⟩, fun hl => ?_⟩, fun e he hty => ?_⟩
  · exact gwf_none (by rw [ht]; decide)
  · exact absurd (ht ▸ hl) (by decide)
  · have hm := recTab_ty he
    rw [hty, ht] at hm
    exact absurd hm (by decide)

/-- Fresh block bytes are in no object of `Γ ++ L` when `L` lies outside the block. -/
theorem disj_fresh {a : Act σ} {q : Ptrs} {Γ : Gam} {b : BitVec 64} {n : Nat} (hb : BlkF a q Γ b n)
    (L : Gam) (hL : ∀ y ∈ L, y.hi ≤ b.toNat ∨ b.toNat + n ≤ y.lo) (hGam : GamOK Γ) :
    ∀ x : BitVec 64, b.toNat ≤ x.toNat → x.toNat < b.toNat + n → ¬ InObj (Γ ++ L) x.toNat := by
  rintro x h1 h2 ⟨o, ho, ho1, ho2⟩
  rcases List.mem_append.mp ho with ho | ho
  · have hc : (BitVec.ofNat 64 (x.toNat / 8 * 8)).toNat = x.toNat / 8 * 8 := by
      have := x.isLt
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    obtain ⟨o8, -, -⟩ := hGam.1 o ho
    have h8 := hb.1
    have hov : Overlap b.toNat n (BitVec.ofNat 64 (x.toNat / 8 * 8)) :=
      ⟨by rw [hc]; omega, by rw [hc]; omega, by rw [hc]; omega⟩
    exact (hb.2 _ hov).1 ⟨o, ho, by rw [hc]; unfold Obj.lo at o8 ho1 ⊢; omega, by rw [hc]; omega⟩
  · rcases hL o ho with h | h <;> omega

theorem gamOK_snoc_of {Γ : Gam} (hG : GamOK Γ) {x : Obj} (hal : x.lo % 8 = 0) (hs8 : x.size % 8 = 0)
    (hpos : 0 < x.size) (hmin : (Types.guestC.ty x.ty).minSz ≤ x.size)
    (hsc : (Types.guestC.ty x.ty).region = .scratch → x.hi ≤ scratchEnd)
    (hb64 : x.hi ≤ 2 ^ 64) (hb64' : ∀ y ∈ Γ, y.hi ≤ 2 ^ 64)
    (hd : ∀ a : BitVec 64, InO x a → ¬ InObj Γ a.toNat) : GamOK (Γ ++ [x]) := by
  refine HtabEntries.gamOK_snoc hG hal hs8 hpos hmin hsc ?_
  intro y hy _
  have hpos' := (hG.1 y hy).2.2.1
  exact range_disj (lo := x.lo) (hi := x.hi) (lo' := y.lo) (hi' := y.hi)
    (by unfold Obj.hi Obj.lo; omega) (by unfold Obj.hi Obj.lo; omega) hb64 (hb64' y hy)
    (fun a h1 h2 h3 => hd a ⟨h1, h2⟩ ⟨y, hy, h3.1, h3.2⟩) |>.symm

end InitECandidate.Solver.MemSafe.Ini
