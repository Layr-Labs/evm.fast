import InitECandidate.Solver.MemSafe.Ptx.PtL11

/-!
# F3e: loop 2 -- the inner step
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

theorem nk_bound {E : PtE σ} (hP : PtPre E) {nv nkv : BitVec 64} (hnv : NalOK E nv)
    (hnkv : nkv.toNat = nsS E.s0.memory (lst0 E) nv.toNat) : nkv.toNat < 2 ^ 58 := by
  have h1 := (tx_bounds0 hP).2
  have hcnt : nv.toNat ≤ (cnt0 E).toNat := by rcases hnv with rfl | rfl <;> simp
  have := nsS_mono E.s0.memory (lst0 E) hcnt
  omega

theorem l2_inner_step {E : PtE σ} {En0 : Env} {S : FS} {ak nv nkv w : BitVec 64} {rp rl : BitVec 64} {buf n : Nat}
    {CV : List (BitVec 64)} (hP : PtPreX E) (K : L2C E En0 S ak nv nkv w rp rl buf n CV)
    (iv kv a2 nsv jv kv' : BitVec 64) (hiv : iv.toNat < nv.toNat)
    (hnsv : nsv.toNat = Hooks.accNs E.s0.memory (lst0 E) iv.toNat) (hkv : kv.toNat = nsS E.s0.memory (lst0 E) iv.toNat)
    (hjv : jv.toNat < nsv.toNat) (hk' : kv'.toNat = kv.toNat + jv.toNat) :
    Hoare σ guestCtx (PA E (LI En0 iv kv' a2 nsv jv) S) ptS213
      (fun r t => r = none ∧ J2 E En0 S iv kv a2 nsv t) := by
  have hkb := kv_lt K.hnv K.hnkv hiv hnsv hkv hjv hk'
  have hnkb := nk_bound hP.toPtPre K.hnv K.hnkv
  have e_ak : LI En0 iv kv' a2 nsv jv (nm "al_keys") = some (.val (.word ak)) := by
    unfold LI LE2; simpa (config := {decide := true}) [Env.set] using K.hak
  have e_k : LI En0 iv kv' a2 nsv jv (nm "k") = some (.val (.word kv')) := by
    unfold LI LE2; simp (config := {decide := true}) [Env.set]
  have e_a2 : LI En0 iv kv' a2 nsv jv (nm "acc2") = some (.val (.word a2)) := by
    unfold LI LE2; simp (config := {decide := true}) [Env.set]
  have e_j : LI En0 iv kv' a2 nsv jv (nm "j") = some (.val (.word jv)) := by
    unfold LI LE2; simp (config := {decide := true}) [Env.set]
  have hnsb : nsv.toNat < 2 ^ 58 := by
    have := nsS_mono E.s0.memory (lst0 E) (show iv.toNat + 1 ≤ nv.toNat by omega)
    rw [nsS_succ] at this
    have := K.hnkv
    omega
  have hnb : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false := fun g ty h => (K.C0.gl g ty h).1
  have hnb' : ∀ (X : Fct), ∀ g ty, (fun f => S f ∨ f ∈ [X]) (Fct.gobj g ty) → (X ≠ Fct.gobj g ty) →
      cW.contains g = false := by
    intro X g ty h hx
    rcases h with h | h
    · exact hnb g ty h
    · rw [List.mem_singleton] at h; exact absurd h.symm hx
  unfold ptS213
  -- first memcpy
  refine hghostF (Fct.bufok0 (ak + kv' * BitVec.ofNat 64 52) 20) (fun s hpa D Γ p hr hL => ?_) ?_
  · obtain ⟨o, ho, hob, hot, hos⟩ := hL _ K.hobj
    obtain ⟨hak8, hakb, hake⟩ := hL _ K.hpp
    have hb64 : heapEnd < 2 ^ 64 := by unfold heapEnd; norm_num
    have := akN_ge nkv.toNat
    have hn := sub_toNat_small (a := ak) (b := kv') (n := kv'.toNat) (by omega) rfl
    refine bufok0_obj (ptRun_G hr) (ptRun_ptrs hr) ho (by rw [hot]; exact tval_slot) ?_ ?_
    · simp only [Obj.lo]; rw [hob, hn]; omega
    · simp only [Obj.hi]; rw [hob, hn]; omega
  refine hseqN (hn_callC tab_memcpy (callOK_memcpy ?_ (fun g ty h => hnb' _ g ty h (by simp))) ) ?_
  · intro s hpa vs hvs
    obtain ⟨x, y, z, rfl, hx, hy, hz⟩ := evs3 hvs
    have hx' := evI_add (evI_lv (hpa.2 _ _ e_ak)) (evI_mul (evI_lv (hpa.2 _ _ e_k)) (evI_cw s 52)) x hx
    have hy' := evI_ld (evI_add (evI_lv (hpa.2 _ _ e_a2)) (evI_cw s 0)) y hy
    have hz' := evI_cw s 20 z hz
    exact ⟨ak + kv' * BitVec.ofNat 64 52, rd s.memory (a2 + BitVec.ofNat 64 0), BitVec.ofNat 64 20, 20,
      by rw [hx', hy', hz'], by simp, Or.inr (by simp)⟩
  unfold ptS214
  have hnb2 : ∀ g ty, (addF (addF S [Fct.bufok0 (ak + kv' * BitVec.ofNat 64 52) 20])
      [Fct.bufok0 (ak + (kv' * BitVec.ofNat 64 52 + BitVec.ofNat 64 20)) 32]) (Fct.gobj g ty) → cW.contains g = false := by
    intro g ty h
    rcases h with (h | h) | h
    · exact hnb g ty h
    · rw [List.mem_singleton] at h; exact absurd h (by simp)
    · rw [List.mem_singleton] at h; exact absurd h (by simp)
  refine hghostF (Fct.bufok0 (ak + (kv' * BitVec.ofNat 64 52 + BitVec.ofNat 64 20)) 32)
    (fun s hpa D Γ p hr hL => ?_) ?_
  · obtain ⟨o, ho, hob, hot, hos⟩ := hL _ (Or.inl K.hobj)
    obtain ⟨hak8, hakb, hake⟩ := hL _ (Or.inl K.hpp)
    have hb64 : heapEnd < 2 ^ 64 := by unfold heapEnd; norm_num
    have := akN_ge nkv.toNat
    have hn : (ak + (kv' * BitVec.ofNat 64 52 + BitVec.ofNat 64 20)).toNat = ak.toNat + 52 * kv'.toNat + 20 := by
      have h52 : (kv' * BitVec.ofNat 64 52).toNat = 52 * kv'.toNat := by
        rw [BitVec.toNat_mul]; simp only [BitVec.toNat_ofNat]
        rw [Nat.mod_eq_of_lt (a := 52) (by norm_num), Nat.mod_eq_of_lt (a := kv'.toNat * 52) (by omega)]; omega
      rw [BitVec.toNat_add, BitVec.toNat_add, h52]
      simp only [BitVec.toNat_ofNat]
      rw [Nat.mod_eq_of_lt (a := 20) (by norm_num), Nat.mod_eq_of_lt (a := 52 * kv'.toNat + 20) (by omega),
        Nat.mod_eq_of_lt (by omega)]
      omega
    refine bufok0_obj (ptRun_G hr) (ptRun_ptrs hr) ho (by rw [hot]; exact tval_slot) ?_ ?_
    · simp only [Obj.lo]; rw [hob, hn]; omega
    · simp only [Obj.hi]; rw [hob, hn]; omega
  refine hseqN (hn_callC tab_memcpy (callOK_memcpy ?_ hnb2)) ?_
  · intro s hpa vs hvs
    obtain ⟨x, y, z, rfl, hx, hy, hz⟩ := evs3 hvs
    have hx' := evI_add3 (evI_lv (hpa.2 _ _ e_ak)) (evI_mul (evI_lv (hpa.2 _ _ e_k)) (evI_cw s 52)) (evI_cw s 20) x hx
    have hy' := evI_add (evI_ld (evI_add (evI_lv (hpa.2 _ _ e_a2)) (evI_cw s 8)))
      (evI_mul (evI_lv (hpa.2 _ _ e_j)) (evI_cw s 32)) y hy
    have hz' := evI_cw s 32 z hz
    exact ⟨ak + (kv' * BitVec.ofNat 64 52 + BitVec.ofNat 64 20), _, BitVec.ofNat 64 32, 32,
      by rw [hx', hy', hz'], by simp, Or.inr (by simp)⟩
  unfold ptS216
  have hkb2 : kv'.toNat < 2 ^ 58 := by omega
  have hjb2 : jv.toNat < 2 ^ 58 := by omega
  refine hseqN (hassignT (n := nm "k") (w' := kv' + BitVec.ofNat 64 1) ⟨_, e_k⟩
    (fun s hpa v hv => evI_add (evI_lv (hpa.2 _ _ e_k)) (evI_cw s 1) v hv)) ?_
  have e_j2 : (((LI En0 iv kv' a2 nsv jv).set (nm "k") (.val (.word (kv' + BitVec.ofNat 64 1))))) (nm "j")
      = some (.val (.word jv)) := by rw [env_set_ne _ _ (by decide)]; exact e_j
  refine hn_post (hassignT (n := nm "j") (w' := jv + BitVec.ofNat 64 1) ⟨_, e_j2⟩
    (fun s hpa v hv => evI_add (evI_lv (hpa.2 _ _ e_j2)) (evI_cw s 1) v hv)) ?_
  intro t _ h
  rw [li_step2] at h
  refine ⟨jv + BitVec.ofNat 64 1, kv' + BitVec.ofNat 64 1, ?_, ?_, ?_⟩
  · rw [bv_succ hjb2]; omega
  · rw [bv_succ hkb2, bv_succ hjb2]; omega
  · exact pa_mono h (fun x v h => h) (fun f hf => Or.inl (Or.inl hf))

end InitECandidate.Solver.MemSafe.Ptx
