import InitECandidate.Solver.MemSafe.Ptx.PtM4

/-!
# F3e: the `issc` branch -- the `then` part
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

theorem nm_memw {a b : BitVec 64} : ∀ a' b', (Fct.fbuf a 0) ≠ Fct.memw a' b' := by intro a' b' h; cases h

theorem pt_issc_then {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv : BitVec 64} {nbl : Nat} (hP : PtPreX E)
    (K : TeK E En S rp rl buf n CV w wt wa ak nv nkv 0 0 nbl) :
    Hoare σ guestCtx (PA E En S) ptS206 (fun r t => r = none ∧ PA E En (Sx S wt (T1 E) (T2 E)) t) := by
  have hfb' : Sm S wt (Fct.fbuf wt 200) := sm_fact K.hfbt (by intro a b h; cases h)
  have hpp' : Sm S wt (Fct.prop (BlkP wt 200)) := sm_fact K.hppt (by intro a b h; cases h)
  have hord' : Sm S wt (Fct.prop (wt.toNat + 200 ≤ wa.toNat)) := sm_fact K.hord (by intro a b h; cases h)
  have hppa' : Sm S wt (Fct.prop (BlkP wa nbl)) := sm_fact K.hppa (by intro a b h; cases h)
  have hcap : 8 * (nv.toNat + 1) ≤ nbl := by rw [K.hnbl]; omega
  have hrd1 : RdIn (Sm S wt) (Fct.arrbuf wa nbl (nv.toNat + 1) 20 :: Fct.arrbuf wa nbl 1 20 ::
      [Fct.memw (wt + BitVec.ofNat 64 0) w]) := by
    intro f hf hy
    obtain ⟨hS, ne1, ne2⟩ := hf
    rcases K.hrd f hS hy with c | m
    · exact Or.inl c
    · right
      unfold TeRd2 at m
      rcases List.mem_cons.mp m with h | m
      · exact List.mem_cons.mpr (Or.inl h)
      rcases List.mem_cons.mp m with h | m
      · exact List.mem_cons.mpr (Or.inr (List.mem_cons.mpr (Or.inl h)))
      rcases List.mem_cons.mp m with h | m
      · exact List.mem_cons.mpr (Or.inr (List.mem_cons.mpr (Or.inr (List.mem_cons.mpr (Or.inl h)))))
      rcases List.mem_cons.mp m with h | m
      · exact absurd h ne1
      rcases List.mem_cons.mp m with h | m
      · exact absurd h ne2
      · exact absurd m (by simp)
  have hrl : ∀ (c : Nat) (off : Nat), 0 < off → off < 200 → 8 * c ≤ nbl → ∀ s : State σ, PA E En (Sm S wt) s →
      ∀ f ∈ [Fct.arrbuf wa nbl c 20, Fct.arrbuf wa nbl 1 20, Fct.memw (wt + BitVec.ofNat 64 0) w],
        ∀ y, f.reads y → y ≠ wt + BitVec.ofNat 64 off := by
    intro c off h0 h200 hc s hpa f hf y hy
    obtain ⟨_, _, hwt⟩ := pa_prop hpa hpp'
    obtain ⟨_, _, hwa⟩ := pa_prop hpa hppa'
    have hor := pa_prop hpa hord'
    rcases List.mem_cons.mp hf with rfl | hf
    · obtain ⟨j', hj', rfl⟩ := hy; exact te_arr_ne hor hwt hwa h200 (by omega)
    rcases List.mem_cons.mp hf with rfl | hf
    · obtain ⟨j', hj', rfl⟩ := hy
      have : j' = 0 := by omega
      subst this; exact te_arr_ne hor hwt hwa h200 (by omega)
    · rw [List.mem_singleton] at hf; subst hf
      simp only [Fct.reads] at hy; subst hy
      exact bv_off_ne (by omega) (by omega) (by omega)
  have hx1 : ∀ s : State σ, PA E En (Sm S wt) s → EvI s (.load .one (.op .add [lv (nm "tx"), cw 272])) (.val (.word (T1 E))) := by
    intro s hpa v hv
    obtain ⟨D, Γ, p, hr, hD, hL⟩ := hpa.1
    have h1 := evI_ld (evI_add (evI_lv (hpa.2 _ _ K.C0.tx)) (evI_cw s 272)) v hv
    rw [h1, rd_tx hP.toPtPre hr hD (by norm_num) (by norm_num)]; rfl
  unfold ptS206
  refine hoare_pre (P := PA E En (Sm S wt)) ?_ (fun t _ h => sm_pa h)
  refine hseqN (hn_stFBms (S := Sm S wt) (off := 144) (x := T1 E) hfb' hpp'
    (fun s hpa => evI_add (evI_lv (hpa.2 _ _ K.hte)) (evI_cw s 144)) hx1 (by norm_num) (by norm_num) hrd1
    (fun s hpa => hrl _ 144 (by norm_num) (by norm_num) hcap s hpa)) ?_
  have hrd2 := rdin_cons hrd1 (Fct.memw (wt + BitVec.ofNat 64 144) (T1 E))
  have hsub : ∀ s : State σ, PA E En (addF (Sm S wt) [Fct.memw (wt + BitVec.ofNat 64 144) (T1 E)]) s →
      PA E En (Sm S wt) s := fun s hpa => pa_mono hpa (fun _ _ h => h) (fun f hf => Or.inl hf)
  exact hn_stFBms (S := addF (Sm S wt) [Fct.memw (wt + BitVec.ofNat 64 144) (T1 E)]) (off := 152) (x := T2 E)
    (Or.inl hfb') (Or.inl hpp')
    (fun s hpa => evI_add (evI_lv (hpa.2 _ _ K.hte)) (evI_cw s 152))
    (by
      intro s hpa v hv
      obtain ⟨D, Γ, p, hr, hD, hL⟩ := hpa.1
      have h1 := evI_ld (evI_add (evI_lv (hpa.2 _ _ K.C0.tx)) (evI_cw s 280)) v hv
      rw [h1, rd_tx hP.toPtPre hr hD (by norm_num) (by norm_num)]; rfl)
    (by norm_num) (by norm_num) hrd2
    (by
      intro s hpa f hf y hy
      rcases List.mem_cons.mp hf with rfl | hf
      · simp only [Fct.reads] at hy; subst hy; exact bv_off_ne (by norm_num) (by norm_num) (by norm_num)
      · exact hrl _ 152 (by norm_num) (by norm_num) hcap s (hsub s hpa) f hf y hy)

end InitECandidate.Solver.MemSafe.Ptx
