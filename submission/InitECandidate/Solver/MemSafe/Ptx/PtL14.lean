import InitECandidate.Solver.MemSafe.Ptx.PtL13

/-!
# F3e: loop 2 -- the outer step and the loop
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

def I2 (E : PtE σ) (En0 : Env) (S : FS) (nv : BitVec 64) (t : State σ) : Prop :=
  ∃ iv kv : BitVec 64, iv.toNat ≤ nv.toNat ∧ kv.toNat = nsS E.s0.memory (lst0 E) iv.toNat ∧
    PA E (LE2 En0 iv kv) S t

theorem resIns_I2 {E : PtE σ} {En0 : Env} {S : FS} {nv : BitVec 64} {x : MlS} (hx : En0 x = none)
    (h1 : x ≠ nm "k") (h2 : x ≠ nm "i") :
    ResIns x (fun (r : Option (PanSemResultExact 64)) (t : State σ) => r = none ∧ I2 E En0 S nv t) := by
  intro r t old ⟨hr, iv, kv, a, b, hpa⟩
  refine ⟨hr, iv, kv, a, b, pa_res hpa ?_ old⟩
  unfold LE2
  rw [env_set_ne _ _ h2, env_set_ne _ _ h1]; exact hx

theorem l2_outer_step {E : PtE σ} {En0 : Env} {S : FS} {ak nv nkv w : BitVec 64} {rp rl : BitVec 64} {buf n : Nat}
    {CV : List (BitVec 64)} (hP : PtPreX E) (K : L2C E En0 S ak nv nkv w rp rl buf n CV)
    (iv kv : BitVec 64) (hlt : iv.toNat < nv.toNat) (hkv : kv.toNat = nsS E.s0.memory (lst0 E) iv.toNat) :
    Hoare σ guestCtx (PA E (LE2 En0 iv kv) S) ptS208 (fun r t => r = none ∧ I2 E En0 S nv t) := by
  have hcnt : nv.toNat ≤ (cnt0 E).toNat := by rcases K.hnv with rfl | rfl <;> simp
  have hcntb := (tx_bounds0 hP.toPtPre).1
  have hivb : iv.toNat < 2 ^ 58 := by omega
  have hjc : iv.toNat < (cnt0 E).toNat := by omega
  have h2 : En0 (nm "acc2") = none := K.C0.un _ (by decide)
  have h3 : En0 (nm "ns") = none := K.C0.un _ (by decide)
  have h4 : En0 (nm "j") = none := K.C0.un _ (by decide)
  have e_tx : LE2 En0 iv kv (nm "tx") = some (.val (.word E.tx)) := by
    unfold LE2; simp (config := {decide := true}) [Env.set]; exact K.C0.tx
  have e_i : LE2 En0 iv kv (nm "i") = some (.val (.word iv)) := by
    unfold LE2; simp (config := {decide := true}) [Env.set]
  unfold ptS208
  refine hdecT (w := lst0 E + iv * BitVec.ofNat 64 24) (resIns_I2 h2 (by decide) (by decide)) ?_ ?_
  · intro s hpa v hv
    obtain ⟨D, Γ, p, hr, hD, hL⟩ := hpa.1
    have h1 := evI_add (evI_ld (evI_add (evI_lv (hpa.2 _ _ e_tx)) (evI_cw s 208)))
      (evI_mul (evI_lv (hpa.2 _ _ e_i)) (evI_cw s 24)) v hv
    rw [h1, rd_tx hP.toPtPre hr hD (by norm_num) (by norm_num)]
    rfl
  unfold ptS209
  have e_a2 : ((LE2 En0 iv kv).set (nm "acc2") (.val (.word (lst0 E + iv * BitVec.ofNat 64 24)))) (nm "acc2")
      = some (.val (.word (lst0 E + iv * BitVec.ofNat 64 24))) := env_set_self _ _ _
  refine hdecT (w := rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * iv.toNat + 16)))
    (resIns_I2 h3 (by decide) (by decide)) ?_ ?_
  · intro s hpa v hv
    obtain ⟨D, Γ, p, hr, hD, hL⟩ := hpa.1
    have h1 := evI_ld (evI_add (evI_lv (hpa.2 _ _ e_a2)) (evI_cw s 16)) v hv
    rw [h1, bv_acc_off hivb 16, rd_acc hP.toPtPre hr hD hjc (by norm_num) (by norm_num)]
  unfold ptS210
  refine hdecT (w := 0) (resIns_I2 h4 (by decide) (by decide)) (fun s _ => evI_cw s 0) ?_
  unfold ptS211
  have hnsv : (rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * iv.toNat + 16))).toNat =
      Hooks.accNs E.s0.memory (lst0 E) iv.toNat := rfl
  refine hseqN (P1 := fun t => ∃ kv'' : BitVec 64, kv''.toNat = kv.toNat +
      (rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * iv.toNat + 16))).toNat ∧
      PA E (LI En0 iv kv'' (lst0 E + iv * BitVec.ofNat 64 24)
        (rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * iv.toNat + 16)))
        (rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * iv.toNat + 16)))) S t) ?_ ?_
  · exact l2_inner_loop hP K iv kv _ _ hlt hnsv hkv
  · refine hoare_exC fun kv'' hkv'' => ?_
    have e_i2 : LI En0 iv kv'' (lst0 E + iv * BitVec.ofNat 64 24)
        (rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * iv.toNat + 16)))
        (rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * iv.toNat + 16))) (nm "i") = some (.val (.word iv)) := by
      unfold LI LE2; simp (config := {decide := true}) [Env.set]
    refine hn_post (hassignT (n := nm "i") (w' := iv + BitVec.ofNat 64 1) ⟨_, e_i2⟩ ?_) ?_
    · intro s hpa v hv
      exact evI_add (evI_lv (hpa.2 _ _ e_i2)) (evI_cw s 1) v hv
    · intro t _ h
      refine ⟨iv + BitVec.ofNat 64 1, kv'', by rw [bv_succ hivb]; omega, ?_, ?_⟩
      · rw [bv_succ hivb, nsS_succ, ← hkv, hkv'']; rfl
      · exact pa_mono h (le2_incl h2 h3 h4 _ _ _ _ _ _) (fun f hf => hf)

end InitECandidate.Solver.MemSafe.Ptx
