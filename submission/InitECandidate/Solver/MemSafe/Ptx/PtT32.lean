import InitECandidate.Solver.MemSafe.Ptx.PtT31

/-!
# F3h: the back half of the tail, from `ptS165` (the `RECEIPT_LOGS` push) to the `return`
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

/-- Forget a variable. -/
def Env.drop (En : Env) (i : MlS) : Env := fun y => if y = i then none else En y

theorem env_drop_none (En : Env) (i : MlS) : En.drop i i = none := by simp [Env.drop]

theorem env_drop_ne (En : Env) {i y : MlS} (h : y ≠ i) : En.drop i y = En y := by simp [Env.drop, h]

theorem pag_drop {B : State σ → Prop} {En : Env} {u : State σ} (h : PAg B En u) (i : MlS) : PAg B (En.drop i) u :=
  pag_mono h (fun y v hy => by
    by_cases hyi : y = i
    · subst hyi; rw [env_drop_none] at hy; cases hy
    · rwa [env_drop_ne _ hyi] at hy) (fun s h => h)

section g1
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env}

/-- **From `ptS165` to the return.** -/
theorem tl_g1 {RLv l : BitVec 64} (hP : TlPre K) (hgs : Bal.HGS σ)
    (hBC : ∀ a, Z a → BlkC K a)
    (hblk : ∀ a, BlkC K a → ¬ K.Wt a → Z a ∧ ref a = K.ref0 a)
    (hrc : ∀ (Γ : Gam) (p : Ptrs) (u : State σ), TlS K.A ref Z O u Γ p →
      Z (K.E.rcs + K.E.idx * 16) ∧ Z (K.E.rcs + K.E.idx * 16 + 8) ∧
        Hooks.VInR tVAL Γ (ref (K.E.rcs + K.E.idx * 16)) (ref (K.E.rcs + K.E.idx * 16 + 8)))
    (h80 : Z (K.out + BitVec.ofNat 64 80) ∧ ref (K.out + BitVec.ofNat 64 80) = K.ref0 (K.out + BitVec.ofNat 64 80))
    (h88 : Z (K.out + BitVec.ofNat 64 88) ∧ ref (K.out + BitVec.ofNat 64 88) = K.ref0 (K.out + BitVec.ofNat 64 88))
    (hmv : K.ref0 (K.out + BitVec.ofNat 64 80) ≠ 0 →
      MarkVals (K.ref0 (K.out + BitVec.ofNat 64 80)) (K.ref0 (K.out + BitVec.ofNat 64 88)))
    (h24 : Z (K.out + BitVec.ofNat 64 24) ∧ ref (K.out + BitVec.ofNat 64 24) = K.ref0 (K.out + BitVec.ofNat 64 24))
    (hz72 : Z (K.E.bo + BitVec.ofNat 64 72) ∧ ref (K.E.bo + BitVec.ofNat 64 72) = RLv)
    (hRL : ∃ o ∈ K.E.Γ0, o.base = RLv ∧ o.ty = tLSTh)
    (hout : En (nm "out") = some (.val (.word K.out))) (hrl : En (nm "rl") = none)
    (hsl : En (nm "stable_logs") = some (.val (.word l)))
    (hdel : En (nm "del") = none) (hdcap : En (nm "dcap") = none) (hs : En (nm "s") = none)
    (hmkv : En (nm "tx_frame_mark") = none) :
    Hoare σ guestCtx (PAg (TL K.A ref Z O) En) ptS165
      (fun r t => r = some (.returned (.val (.word 0))) ∧ TailPost K t) := by
  have hQT := locIns_tail K
  refine tb5 hP hQT hz72 hRL (fun a ha => blkC_inl (hBC a ha)) hrl hsl ?_
  refine hoare_pre (P := PAg (TL K.A ref Z O) (En.drop (nm "i"))) ?_ (fun s _ h => pag_drop h _)
  have hne : ∀ y : MlS, y ≠ nm "i" → En.drop (nm "i") y = En y := fun y h => env_drop_ne _ h
  refine tb6 hP hQT h24 (by rw [hne _ (by decide)]; exact hout) (by rw [hne _ (by decide)]; exact hdel)
    (by rw [hne _ (by decide)]; exact hdcap) (by rw [hne _ (by decide)]; exact hs) (env_drop_none _ _) ?_
  exact tl_end hP hgs hBC hblk hrc h80 h88 hmv (by rw [hne _ (by decide)]; exact hout)
    (by rw [hne _ (by decide)]; exact hmkv)

end g1

end InitECandidate.Solver.MemSafe.Ptx
