import InitECandidate.Solver.MemSafe.Ini.Body

/-!
# `nodedb_build`: the capacity loop, `htab_new`, and the whole body
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.Spec.Mpt.Leaves (DomTop)

variable {σ : Type} {X : Ctx 64}

def kvC (A N C : BitVec 64) : List (MlS × ValueHOL 64) :=
  [(nm "cap", .val (.word C)), (nm "slice_arr", .val (.word A)), (nm "n", .val (.word N))]

section head
variable {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} {A N ks kp W : BitVec 64}

/-- The capacity loop invariant. -/
def Jc (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) (A N : BitVec 64) (t : State σ) : Prop :=
  ∃ (C : BitVec 64) (j : Nat), LVi (kvC A N C) t.locals ∧ 2 ≤ j ∧ j ≤ 26 ∧ C.toNat = 2 ^ j ∧
    ∃ H, Eff s0 t Γ0 p0 H

/-- After the capacity loop. -/
def Jcx (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) (A N : BitVec 64) (t : State σ) : Prop :=
  ∃ C : BitVec 64, LVi (kvC A N C) t.locals ∧ C.toNat ≤ 2 ^ 32 ∧ ∃ H, Eff s0 t Γ0 p0 H

theorem two_mul_toNat (hN : N.toNat < 2 ^ 24) :
    (BitVec.ofNat 64 2 * N + BitVec.ofNat 64 2).toNat = 2 * N.toNat + 2 := by
  rw [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
  have h2 : (2 : Nat) % 2 ^ 64 = 2 := Nat.mod_eq_of_lt (by omega)
  rw [h2, Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)]

theorem lvi_kvC_set {s : State σ} {C C' : BitVec 64} (h : LVi (kvC A N C) s.locals) :
    LVi (kvC A N C') (setVarHOLFinite (nm "cap") (.val (.word C')) s).locals := by
  intro q hq
  simp only [kvC, List.mem_cons, List.not_mem_nil, or_false] at hq
  rcases hq with rfl | rfl | rfl
  · exact lk_set_self _ _ _
  · rw [lk_set_ne _ _ (by dsimp only; decide)]; exact h _ (by simp [kvC])
  · rw [lk_set_ne _ _ (by dsimp only; decide)]; exact h _ (by simp [kvC])

theorem cap_loop (hN : N.toNat < 2 ^ 24) :
    HoareG σ X (Jc s0 Γ0 p0 A N) ndbCapLoop (NQ (Jcx s0 Γ0 p0 A N) (FinQ s0 Γ0 p0 A N)) := by
  unfold ndbCapLoop
  refine nq_while (c := ndbCapCond) ?_ ?_ ?_
  · rintro s ⟨C, j, hLV, h2, h20, hC, H, he⟩
    exact ⟨C, j, hLV, h2, h20, hC, H, eff_congr he rfl rfl rfl rfl⟩
  · refine nq_assign ?_
    intro s hs ⟨⟨C, j, hLV, h2, h20, hC, H, he⟩, hc⟩ v hv
    have hcl : (lvi_ev hLV (x := nm "cap") (v := .val (.word C)) (by simp [kvC])) =
        (lvi_ev hLV (x := nm "cap") (v := .val (.word C)) (by simp [kvC])) := rfl
    have hlt : C.toNat < 2 * N.toNat + 2 := by
      have hb : ev s (.op .add [.panop .mul [cw 2, lv (nm "n")], cw 2]) =
          some (.val (.word (BitVec.ofNat 64 2 * N + BitVec.ofNat 64 2))) :=
        ev_add2 (ev_mul2 (ev_cw s 2) (lvi_ev hLV (x := nm "n") (v := .val (.word N))
          (by simp [kvC]))) (ev_cw s 2)
      have := Struct.cmp_lower_true (Rec.cmp_true' (lvi_ev hLV (x := nm "cap")
        (v := .val (.word C)) (by simp [kvC])) hb hc)
      rw [two_mul_toNat hN] at this
      exact this
    have hj : j < 26 := by
      by_contra hcon
      have h20' : j = 26 := by omega
      subst h20'
      rw [hC] at hlt
      have : (2 : Nat) ^ 26 = 67108864 := by norm_num
      have : (2 : Nat) ^ 24 = 16777216 := by norm_num
      omega
    rw [ev_mul2 (lvi_ev hLV (x := nm "cap") (v := .val (.word C)) (by simp [kvC])) (ev_cw s 2)] at hv
    cases hv
    refine ⟨C * BitVec.ofNat 64 2, j + 1, lvi_kvC_set hLV, by omega, by omega, ?_, H,
      eff_congr he rfl rfl rfl rfl⟩
    have hpow : 2 ^ (j + 1) = 2 ^ j * 2 := Nat.pow_succ 2 j
    have hlt64 : 2 ^ (j + 1) < 2 ^ 64 := Nat.pow_lt_pow_right (by omega) (by omega)
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat, hC, Nat.mod_eq_of_lt (a := 2) (by omega), ← hpow]
    exact Nat.mod_eq_of_lt hlt64
  · intro s hs ⟨C, j, hLV, h2, h20, hC, H, he⟩ hc
    exact ⟨C, hLV, by rw [hC]; exact Nat.pow_le_pow_right (by omega) (by omega : j ≤ 32), H, he⟩

def kv3 (A N C T : BitVec 64) : List (MlS × ValueHOL 64) :=
  [(nm "t", .val (.word T)), (nm "cap", .val (.word C)), (nm "slice_arr", .val (.word A)),
   (nm "n", .val (.word N))]

/-- Before `var i = 0`. -/
def K3pre (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) (A N C T : BitVec 64) (t : State σ) : Prop :=
  LVi (kv3 A N C T) t.locals ∧ ∃ H, Eff s0 t Γ0 p0 H ∧ Tbl p0 A T 0 t H

theorem lvi_kvL_of_kv3 {s : State σ} {C T : BitVec 64} (h : LVi (kv3 A N C T) s.locals) :
    LVi (kvL A N C T (BitVec.ofNat 64 0))
      (setVarHOLFinite (nm "i") (.val (.word (BitVec.ofNat 64 0))) s).locals := by
  intro q hq
  simp only [kvL, List.mem_cons, List.not_mem_nil, or_false] at hq
  rcases hq with rfl | rfl | rfl | rfl | rfl
  · exact lk_set_self _ _ _
  · rw [lk_set_ne _ _ (by dsimp only; decide)]; exact h _ (by simp [kv3])
  · rw [lk_set_ne _ _ (by dsimp only; decide)]; exact h _ (by simp [kv3])
  · rw [lk_set_ne _ _ (by dsimp only; decide)]; exact h _ (by simp [kv3])
  · rw [lk_set_ne _ _ (by dsimp only; decide)]; exact h _ (by simp [kv3])

theorem k3_ndb (sta : Sta s0 Γ0 p0 N ks kp W) (hX : X.code.lookup = guestCode)
    (hA : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hD : DomTop X) (C T : BitVec 64) :
    HoareG σ X (K3pre s0 Γ0 p0 A N C T) ndbK3 (NQ (fun _ => True) (FinQ s0 Γ0 p0 A N)) := by
  unfold ndbK3
  refine nq_dec (congrF_finQ s0 Γ0 p0 A N) (J1 := fun t => ∃ I, JL s0 Γ0 p0 A N C T I t)
    (J2 := JL s0 Γ0 p0 A N C T N) ?_ ?_ (fun _ _ _ _ => trivial)
  · intro s hs ⟨hLV, H, he, ht⟩ v hv
    rw [ev_cw] at hv
    cases hv
    have h0 : (BitVec.ofNat 64 0).toNat = 0 := by simp
    refine ⟨BitVec.ofNat 64 0, lvi_kvL_of_kv3 hLV, by simp, H, eff_congr he rfl rfl rfl rfl, ?_⟩
    rw [h0]
    exact tbl_congr ht rfl rfl rfl
  · refine nq_seq (loop_ndb sta hX hA hD) (nq_ret ?_)
    intro s hs ⟨hLV, hIN, H, he, ht⟩ v hv
    rw [lvi_ev hLV (x := nm "t") (v := .val (.word T)) (by simp [kvL])] at hv
    cases hv
    exact ⟨H, T, rfl, eff_congr he rfl rfl rfl rfl, tbl_congr ht rfl rfl rfl⟩

theorem k2_ndb (sta : Sta s0 Γ0 p0 N ks kp W) (hX : X.code.lookup = guestCode)
    (hA : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hD : DomTop X) (hW : HtabNewW σ X) :
    HoareG σ X (Jc s0 Γ0 p0 A N) ndbK2 (NQ (fun _ => True) (FinQ s0 Γ0 p0 A N)) := by
  unfold ndbK2
  refine nq_seq (cap_loop sta.hN) (nq_decCall (congrF_finQ s0 Γ0 p0 A N) (funSpec_newLc hX hW)
    (fun _ _ _ _ h => h.2) (J1 := fun v t => ∃ C T, v = .val (.word T) ∧ K3pre s0 Γ0 p0 A N C T t)
    (J2 := fun _ => True)
    ?_ ?_ (fun _ _ _ _ => trivial))
  · intro s hs ⟨C, hLV, hC, H, he⟩ vs hvs callee v st hR hst hsh
    have hcap : ev s (lv (nm "cap")) = some (.val (.word C)) :=
      lvi_ev hLV (x := nm "cap") (v := .val (.word C)) (by simp [kvC])
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [ev_cw] at h1
    cases h1
    rw [hcap] at h2
    cases h2
    have he' : Eff s0 (callEntryStateHOLFinite s callee) Γ0 p0 H := eff_congr he rfl rfl rfl rfl
    obtain ⟨H1, rfl, hef, htb⟩ := new_eff (A := A) he' hC hR
    refine ⟨C, H, rfl, ?_, H1, eff_congr hef rfl rfl rfl rfl, tbl_congr htb rfl rfl rfl⟩
    intro q hq
    simp only [kv3, List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl | rfl | rfl
    · exact lk_set_self _ _ _
    · rw [lk_set_ne _ _ (by dsimp only; decide)]; exact hLV _ (by simp [kvC])
    · rw [lk_set_ne _ _ (by dsimp only; decide)]; exact hLV _ (by simp [kvC])
    · rw [lk_set_ne _ _ (by dsimp only; decide)]; exact hLV _ (by simp [kvC])
  · intro v s hs ⟨C, T, hv, hP⟩ hg
    exact k3_ndb sta hX hA hD C T s hs hP hg

/-- **The body of `nodedb_build`.** -/
theorem body_ndb (sta : Sta s0 Γ0 p0 N ks kp W) (hX : X.code.lookup = guestCode)
    (hA : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hD : DomTop X) (hW : HtabNewW σ X) :
    HoareG σ X (fun s => LVi [(nm "slice_arr", .val (.word A)), (nm "n", .val (.word N))] s.locals ∧
        ∃ H, Eff s0 s Γ0 p0 H) ndbBody (NQ (fun _ => True) (FinQ s0 Γ0 p0 A N)) := by
  unfold ndbBody
  refine nq_dec (congrF_finQ s0 Γ0 p0 A N) (J1 := Jc s0 Γ0 p0 A N) (J2 := fun _ => True) ?_
    (k2_ndb sta hX hA hD hW) (fun _ _ _ _ => trivial)
  intro s hs ⟨hLV, H, he⟩ v hv
  rw [ev_cw] at hv
  cases hv
  refine ⟨BitVec.ofNat 64 4, 2, ?_, le_rfl, by omega, by decide, H, eff_congr he rfl rfl rfl rfl⟩
  intro q hq
  simp only [kvC, List.mem_cons, List.not_mem_nil, or_false] at hq
  rcases hq with rfl | rfl | rfl
  · exact lk_set_self _ _ _
  · rw [lk_set_ne _ _ (by dsimp only; decide)]; exact hLV _ (by simp)
  · rw [lk_set_ne _ _ (by dsimp only; decide)]; exact hLV _ (by simp)

end head

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.cap_loop
#print axioms InitECandidate.Solver.MemSafe.Ini.body_ndb
