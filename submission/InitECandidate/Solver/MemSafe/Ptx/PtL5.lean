import InitECandidate.Solver.MemSafe.Ptx.PtL4

/-!
# F3e: loop 1 -- one iteration
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

theorem bv_acc_off {L : BitVec 64} {iv : BitVec 64} (h : iv.toNat < 2 ^ 58) (off : Nat) :
    L + iv * BitVec.ofNat 64 24 + BitVec.ofNat 64 off = L + BitVec.ofNat 64 (24 * iv.toNat + off) := by
  rw [bv_mul24 h, BitVec.add_assoc, ← BitVec.ofNat_add]

theorem l1_step {E : PtE σ} {En0 : Env} {Sb : FS} {wa wt nv w : BitVec 64} {nbl : Nat} {rp rl : BitVec 64}
    {buf n : Nat} {CV : List (BitVec 64)} (hP : PtPreX E) (K : L1C E En0 Sb wa wt nv w nbl rp rl buf n CV)
    (iv nkv : BitVec 64) (hlt : iv.toNat < nv.toNat) (hnk : nkv.toNat = nsS E.s0.memory (lst0 E) iv.toNat) :
    Hoare σ guestCtx (PA E (LE En0 iv nkv) (L1S Sb wa nbl iv)) ptS218
      (fun r t => r = none ∧ L1I E En0 Sb wa nbl nv t) := by
  have hcnt : nv.toNat ≤ (cnt0 E).toNat := by rcases K.hnv with rfl | rfl <;> simp
  have hcntb := (tx_bounds0 hP.toPtPre).1
  have hnsb := (tx_bounds0 hP.toPtPre).2
  have hivb : iv.toNat < 2 ^ 58 := by omega
  have hacc : En0 (nm "acc") = none := K.C0.un _ (by decide)
  have hjc : iv.toNat < (cnt0 E).toNat := by omega
  have hCy := cy_LE K.C0 iv nkv
  have e_tx : LE En0 iv nkv (nm "tx") = some (.val (.word E.tx)) := by
    rw [le_other iv nkv (by decide) (by decide)]; exact K.C0.tx
  have e_wa : LE En0 iv nkv (nm "al_addrs") = some (.val (.word wa)) := by
    rw [le_other iv nkv (by decide) (by decide)]; exact K.hwa
  unfold ptS218
  refine hdecT (w := lst0 E + iv * BitVec.ofNat 64 24) (resIns_L1I hacc) ?_ ?_
  · intro s hpa v hv
    obtain ⟨D, Γ, p, hr, hD, hL⟩ := hpa.1
    have h1 := evI_add (evI_ld (evI_add (evI_lv (hpa.2 _ _ e_tx)) (evI_cw s 208)))
      (evI_mul (evI_lv (hpa.2 _ _ (le_i En0 iv nkv))) (evI_cw s 24)) v hv
    rw [h1, rd_tx hP.toPtPre hr hD (by norm_num) (by norm_num)]
    rfl
  have hB : BufOK guestC E.Γ0 E.p0 (rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * iv.toNat))).toNat 20 :=
    hP.txbuf.2 iv.toNat hjc
  refine hghostF (Fct.bufok0 (rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * iv.toNat))) 20)
    (fun s hpa D Γ p hr hL => bufok0_pre hP.toPtPre hr hB) ?_
  have e_wa' : ((LE En0 iv nkv).set (nm "acc") (.val (.word (lst0 E + iv * BitVec.ofNat 64 24)))) (nm "al_addrs")
      = some (.val (.word wa)) := by rw [env_set_ne _ _ (by decide)]; exact e_wa
  have e_i' : ((LE En0 iv nkv).set (nm "acc") (.val (.word (lst0 E + iv * BitVec.ofNat 64 24)))) (nm "i")
      = some (.val (.word iv)) := by rw [env_set_ne _ _ (by decide)]; exact le_i _ _ _
  have e_nk' : ((LE En0 iv nkv).set (nm "acc") (.val (.word (lst0 E + iv * BitVec.ofNat 64 24)))) (nm "nkeys")
      = some (.val (.word nkv)) := by rw [env_set_ne _ _ (by decide)]; exact le_nk _ _ _
  have e_acc : ((LE En0 iv nkv).set (nm "acc") (.val (.word (lst0 E + iv * BitVec.ofNat 64 24)))) (nm "acc")
      = some (.val (.word (lst0 E + iv * BitVec.ofNat 64 24))) := env_set_self _ _ _
  unfold ptS219
  refine hseqN (hn_stArr (c := iv.toNat + 1) (n := 20) (nblk := nbl)
    (xv := rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * iv.toNat)))
    (Or.inl (Or.inr (by simp))) (Or.inl (Or.inl K.hfb)) (Or.inl (Or.inl K.hpp)) (Or.inr (by simp))
    ?_ ?_ (by rw [K.hnbl]; omega) (rdin_nr (rdin_cons K.hrd (Fct.arrbuf wa nbl (iv.toNat + 1) 20))
      (L := [Fct.bufok0 (rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * iv.toNat))) 20]) (by simp [Fct.reads])) ?_) ?_
  · intro s hpa v hv
    have h1 := evI_add (evI_lv (hpa.2 _ _ e_wa'))
      (evI_mul (evI_add (evI_lv (hpa.2 _ _ e_i')) (evI_cw s 1)) (evI_cw s 8)) v hv
    rw [h1, bv_mul8 hivb]
  · intro s hpa v hv
    obtain ⟨D, Γ, p, hr, hD, hL⟩ := hpa.1
    have h1 := evI_ld (evI_add (evI_lv (hpa.2 _ _ e_acc)) (evI_cw s 0)) v hv
    rw [h1, bv_acc_off hivb 0, rd_acc hP.toPtPre hr hD hjc (by norm_num) (by norm_num)]
    rfl
  · intro s hpa f hf y hy
    rcases List.mem_cons.mp hf with rfl | hf
    · obtain ⟨j, hj, rfl⟩ := hy
      exact bv_off_ne (by omega) (by omega) (by omega)
    rcases List.mem_cons.mp hf with rfl | hf
    · obtain ⟨j, hj, rfl⟩ := hy
      have : j = 0 := by omega
      subst this
      exact bv_off_ne (by omega) (by omega) (by omega)
    · exact terd_ne_wa (S := addF (L1S Sb wa nbl iv) [Fct.bufok0 (rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * iv.toNat))) 20])
        (Or.inl (Or.inl K.hord)) (Or.inl (Or.inl K.hpt)) (Or.inl (Or.inl K.hpp)) s hpa f hf y hy (iv.toNat + 1)
        (by rw [K.hnbl]; omega)
  unfold ptS220
  have hxkb : (rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * iv.toNat + 16))).toNat = Hooks.accNs E.s0.memory (lst0 E) iv.toNat := rfl
  have hns1 : nsS E.s0.memory (lst0 E) (iv.toNat + 1) ≤ nsS E.s0.memory (lst0 E) (cnt0 E).toNat :=
    nsS_mono _ _ (by omega)
  have hns2 : nsS E.s0.memory (lst0 E) (iv.toNat + 1) = nsS E.s0.memory (lst0 E) iv.toNat +
      (rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * iv.toNat + 16))).toNat := rfl
  have hnkadd : (nkv + rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * iv.toNat + 16))).toNat =
      nsS E.s0.memory (lst0 E) (iv.toNat + 1) := by
    rw [BitVec.toNat_add, hns2, hnk]
    have : nsS E.s0.memory (lst0 E) iv.toNat +
      (rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * iv.toNat + 16))).toNat < 2 ^ 64 := by omega
    exact Nat.mod_eq_of_lt (by omega)
  refine hseqN (hassignT (n := nm "nkeys")
    (w' := nkv + rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * iv.toNat + 16))) ⟨_, e_nk'⟩ ?_) ?_
  · intro s hpa v hv
    obtain ⟨D, Γ, p, hr, hD, hL⟩ := hpa.1
    have h1 := evI_add (evI_lv (hpa.2 _ _ e_nk')) (evI_ld (evI_add (evI_lv (hpa.2 _ _ e_acc)) (evI_cw s 16))) v hv
    rw [h1, bv_acc_off hivb 16, rd_acc hP.toPtPre hr hD hjc (by norm_num) (by norm_num)]
  have e_i'' : (((LE En0 iv nkv).set (nm "acc") (.val (.word (lst0 E + iv * BitVec.ofNat 64 24)))).set (nm "nkeys")
      (.val (.word (nkv + rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * iv.toNat + 16)))))) (nm "i")
      = some (.val (.word iv)) := by rw [env_set_ne _ _ (by decide)]; exact e_i'
  refine hn_post (hassignT (n := nm "i") (w' := iv + BitVec.ofNat 64 1) ⟨_, e_i''⟩ ?_) ?_
  · intro s hpa v hv
    exact evI_add (evI_lv (hpa.2 _ _ e_i'')) (evI_cw s 1) v hv
  · intro t _ h
    refine ⟨iv + BitVec.ofNat 64 1, nkv + rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * iv.toNat + 16)),
      by rw [bv_succ hivb]; omega, by rw [bv_succ hivb]; exact hnkadd, ?_⟩
    refine pa_mono h (le_incl hacc iv nkv _ _ _) ?_
    intro f hf
    rcases hf with hf | hf
    · exact Or.inl (Or.inl (Or.inl hf))
    · rw [List.mem_singleton] at hf; subst hf
      refine Or.inr ?_
      rw [List.mem_singleton]
      rw [bv_succ hivb]

end InitECandidate.Solver.MemSafe.Ptx
