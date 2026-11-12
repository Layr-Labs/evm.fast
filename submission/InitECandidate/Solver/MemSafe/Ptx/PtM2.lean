import InitECandidate.Solver.MemSafe.Ptx.PtM1

/-!
# F3e: the `te` phase context `TeK`, and stores into `te`
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

/-- The reading facts about `te`, with the values `v1`, `v2` of `te[144]`, `te[152]`. -/
def TeRd2 (wt w v1 v2 : BitVec 64) : List Fct :=
  [Fct.memw (wt + BitVec.ofNat 64 0) w, Fct.memw (wt + BitVec.ofNat 64 144) v1, Fct.memw (wt + BitVec.ofNat 64 152) v2]

/-- The fixed knowledge while `te` is being filled and the address tables are built. -/
structure TeK (E : PtE σ) (En : Env) (S : FS) (rp rl : BitVec 64) (buf n : Nat) (CV : List (BitVec 64))
    (w wt wa ak nv nkv v1 v2 : BitVec 64) (nbl : Nat) : Prop where
  C0 : Cy E En S rp rl buf n CV w
  hte : En (nm "te") = some (.val (.word wt))
  hwa : En (nm "al_addrs") = some (.val (.word wa))
  hak : En (nm "al_keys") = some (.val (.word ak))
  hnal : En (nm "nal") = some (.val (.word nv))
  hnk : En (nm "nkeys") = some (.val (.word nkv))
  hint : ∃ a b c : BitVec 64, En (nm "intrinsic") = some (wv [a, b, c])
  hprice : ∃ pr : List (BitVec 64), En (nm "price") = some (wv pr) ∧ pr.length = 4
  hmg : ∃ mg : BitVec 64, En (nm "mgas") = some (.val (.word mg)) ∧ S (Fct.prop (mg.toNat ≤ 2 ^ 24))
  hrs : ∃ rs : BitVec 64, En (nm "reservoir") = some (.val (.word rs))
  hnv : NalOK E nv
  hnbl : nbl = (nv.toNat + 1) * 8
  hnkv : nkv.toNat = nsS E.s0.memory (lst0 E) nv.toNat
  hm0 : S (Fct.memw (wt + BitVec.ofNat 64 0) w)
  hm144 : S (Fct.memw (wt + BitVec.ofNat 64 144) v1)
  hm152 : S (Fct.memw (wt + BitVec.ofNat 64 152) v2)
  hfbt : S (Fct.fbuf wt 200)
  hppt : S (Fct.prop (BlkP wt 200))
  hord : S (Fct.prop (wt.toNat + 200 ≤ wa.toNat))
  hppa : S (Fct.prop (BlkP wa nbl))
  hfba : S (Fct.fbuf wa nbl)
  harrf : S (Fct.arrbuf wa nbl (nv.toNat + 1) 20)
  harr1 : S (Fct.arrbuf wa nbl 1 20)
  hobj : S (Fct.obj ak tVAL (akN nkv.toNat))
  hppk : S (Fct.prop (ak.toNat % 8 = 0 ∧ heapBase ≤ ak.toNat ∧ ak.toNat + akN nkv.toNat ≤ heapEnd))
  hrd : RdIn S (Fct.arrbuf wa nbl (nv.toNat + 1) 20 :: Fct.arrbuf wa nbl 1 20 :: TeRd2 wt w v1 v2)

theorem terd_ne_te2 {wt w v1 v2 : BitVec 64} {off k : Nat} (hk : off + 8 * k ≤ 144 ∨ 160 ≤ off) (hk2 : off + 8 * k ≤ 200) (h0 : 0 < off) :
    ∀ f ∈ TeRd2 wt w v1 v2, ∀ y, f.reads y → ∀ j, j < k → y ≠ wt + BitVec.ofNat 64 (off + 8 * j) := by
  intro f hf y hy j hj
  unfold TeRd2 at hf
  rcases List.mem_cons.mp hf with rfl | hf
  · simp only [Fct.reads] at hy; subst hy; exact bv_off_ne (by omega) (by omega) (by omega)
  rcases List.mem_cons.mp hf with rfl | hf
  · simp only [Fct.reads] at hy; subst hy; exact bv_off_ne (by omega) (by omega) (by omega)
  · rw [List.mem_singleton] at hf; subst hf
    simp only [Fct.reads] at hy; subst hy; exact bv_off_ne (by omega) (by omega) (by omega)

/-- **A store into `te` (not at the tracked cells).** -/
theorem hn_stTeK {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv v1 v2 : BitVec 64} {nbl : Nat} (K : TeK E En S rp rl buf n CV w wt wa ak nv nkv v1 v2 nbl)
    {off k : Nat} {e : ExpHOL 64}
    (hlen : ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → (flattenHOL v).length = k)
    (hoff : off % 8 = 0) (hk : off + 8 * k ≤ 200) (h0 : 0 < off) (hside : off + 8 * k ≤ 144 ∨ 160 ≤ off) :
    HN (PA E En S) (.store (.op .add [lv (nm "te"), cw off]) e) (PA E En S) := by
  have hcap : 8 * (nv.toNat + 1) ≤ nbl := by rw [K.hnbl]; omega
  refine hn_stTeS K.hte K.hfbt K.hppt hlen hoff hk K.hrd ?_
  intro s hpa f hf y hy j hj
  obtain ⟨_, _, hwt⟩ := pa_prop hpa K.hppt
  obtain ⟨_, _, hwa⟩ := pa_prop hpa K.hppa
  have hor := pa_prop hpa K.hord
  rcases List.mem_cons.mp hf with rfl | hf
  · obtain ⟨j', hj', rfl⟩ := hy
    exact te_arr_ne hor hwt hwa (by omega) (by omega)
  rcases List.mem_cons.mp hf with rfl | hf
  · obtain ⟨j', hj', rfl⟩ := hy
    have : j' = 0 := by omega
    subst this
    exact te_arr_ne hor hwt hwa (by omega) (by omega)
  · exact terd_ne_te2 hside hk h0 f hf y hy j hj


theorem hlen_add1 {E : PtE σ} {En : Env} {S : FS} {x : MlS} {y : BitVec 64} (hx : En x = some (.val (.word y))) :
    ∀ s : State σ, PA E En S s → ∀ v, ev s (.op .add [lv x, cw 1]) = some v → (flattenHOL v).length = 1 := by
  intro s hpa v hv
  have := evI_add (evI_lv (hpa.2 _ _ hx)) (evI_cw s 1) v hv
  subst this
  exact len_word _

/-- `ptS60` to `ptS66`: stores `te[96]` .. `te[136]` and the `isb` branch. -/
theorem pt_c8a {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w wt wa ak nv nkv v1 v2 : BitVec 64} {nbl : Nat}
    (hQT : LocIns QT) (K : TeK E En S rp rl buf n CV w wt wa ak nv nkv v1 v2 nbl)
    (hk : Hoare σ guestCtx (PA E En S) ptS67 QT) : Hoare σ guestCtx (PA E En S) ptS60 QT := by
  unfold ptS60
  refine hseqN (hn_stTeK K (off := 96) (k := 1) (hlen_lv_w K.hwa) (by norm_num) (by norm_num) (by norm_num)
    (Or.inl (by norm_num))) ?_
  unfold ptS62
  refine hseqN (hn_stTeK K (off := 104) (k := 1) (hlen_add1 K.hnal) (by norm_num) (by norm_num) (by norm_num)
    (Or.inl (by norm_num))) ?_
  unfold ptS63
  refine hseqN (hn_stTeK K (off := 112) (k := 1) (hlen_lv_w K.hak) (by norm_num) (by norm_num) (by norm_num)
    (Or.inl (by norm_num))) ?_
  unfold ptS64
  refine hseqN (hn_stTeK K (off := 120) (k := 1) (hlen_lv_w K.hnk) (by norm_num) (by norm_num) (by norm_num)
    (Or.inl (by norm_num))) ?_
  unfold ptS65
  refine hdecAnyU (locIns_resIns hQT _) tab_tx_is_blob (by simp) rfl txisb_fin rfl
    (fun g ty h => (K.C0.gl g ty h).1) (K.C0.un _ (by decide)) ?_
  unfold ptS66
  refine hseqN (P1 := PA E En S) ?_ ?_
  · unfold ptS68
    refine hn_ite ?_ (hn_pre hn_skip (fun s _ h => h.1))
    refine hn_pre ?_ (fun s _ h => h.1)
    unfold ptS207
    refine hn_seq (hn_stTeK K (off := 128) (k := 1) (fun s hpa v hv => len_ld1 hv) (by norm_num) (by norm_num)
      (by norm_num) (Or.inl (by norm_num))) (hn_stTeK K (off := 136) (k := 1) (fun s hpa v hv => len_ld1 hv)
      (by norm_num) (by norm_num) (by norm_num) (Or.inl (by norm_num)))
  · exact hk

end InitECandidate.Solver.MemSafe.Ptx
