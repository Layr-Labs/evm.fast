import InitECandidate.Solver.Spec.Inv.HtabNew

/-! Exact heap consumption of the installed hash-table constructor. The accepted constructor proof derives the exact final frontier while proving its memory layout. This specialization retains the frontier equality. -/
namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def footprint (KL CP : BitVec 64) : Nat :=
  88 + ((if CP.toNat < 2 then 2 else CP.toNat) + 1) * (((KL.toNat + 7) / 8 * 8) + 32 + 8)

section body
variable (s0 : PanSemStateFiniteExact 64 σ) (KL CP H0 : BitVec 64)
variable (hC : X.code.lookup = guestCode) (hKL : KL.toNat ≤ 2 ^ 16) (hCP : CP.toNat ≤ 2 ^ 20)
include hC hKL hCP

private theorem newBody_heap_exact (hk0 : s0.locals.lookup (nm "key_len") = some (.val (.word KL)))
    (hc0 : s0.locals.lookup (nm "cap") = some (.val (.word CP)))
    (hH : s0.globals.lookup hpN = some (.val (.word H0))) (hHle : H0.toNat ≤ heapEnd)
    (hH8 : H0.toNat % 8 = 0) :
    Hoare σ X (fun t => t = s0) newBody
      (fun r t => ∀ v, r = some (.returned v) → ∃ H1 : BitVec 64, t.globals.lookup hpN = some (.val (.word H1)) ∧ H1.toNat = H0.toNat + footprint KL CP ∧ H1.toNat ≤ heapEnd ∧ H1.toNat % 8 = 0) := by
  have hhe : heapEnd = 2952790016 := rfl
  obtain ⟨sz1, sz2, sz3⟩ := new_sizes KL CP hC hKL hCP
  have hS := nS_toNat KL hKL
  have hCn := nC_toNat CP
  have hS8 : (nS KL).toNat % 8 = 0 := by rw [hS]; omega
  have hC2 : 2 ≤ (nC CP).toNat := by rw [hCn]; split <;> omega
  refine hoare_decCall_alloc hC (fun u hu => ⟨H0, BitVec.ofNat 64 88, by rw [hu]; exact hH, hHle, hH8,
    ev_cw _ 88, by decide⟩) ?_
  intro u _ hu P0 Nz st hP0 hsz hsm hshp hsgl hsbe hsd hsum
  subst u
  rw [hH] at hP0
  have e1 := word_inj hP0
  subst e1
  rw [ev_cw] at hsz
  have e2 := word_inj hsz
  subst e2
  have h88 : (H0 + BitVec.ofNat 64 88).toNat = H0.toNat + 88 := toNat_add_lt (by simp; omega)
  have hsum0 : H0.toNat + 88 ≤ heapEnd := by
    have := hsum; simp only [BitVec.toNat_ofNat] at this; omega
  -- `stride`
  refine hoare_dec fun u1 _ hu1 v hv _ => ?_
  have hu1' : u1 = setVarHOLFinite (nm "t") (.val (.word H0)) { st with locals := s0.locals } := hu1
  subst hu1'
  have hklU : DLk (setVarHOLFinite (nm "t") (.val (.word H0)) { st with locals := s0.locals })
      "key_len" KL := by lks
  have hval : ev (setVarHOLFinite (nm "t") (.val (.word H0)) { st with locals := s0.locals })
      (.op .and [.op .add [lv (nm "key_len"), cw 7], .op .sub [cw 0, cw 8]]) =
      some (.val (.word (nS KL))) := by
    rw [ev_op2 (ev_add2 (ev_lv_w hklU) (ev_cw _ 7)) (ev_sub2 (ev_cw _ 0) (ev_cw _ 8))]
    rfl
  rw [hval] at hv
  have e3 := (Option.some.inj hv).symm
  subst e3
  -- `ncap`
  refine hoare_dec fun u2 _ hu2 v2 hv2 _ => ?_
  have hu2' : u2 = setVarHOLFinite (nm "stride") (.val (.word (nS KL)))
      (setVarHOLFinite (nm "t") (.val (.word H0)) { st with locals := s0.locals }) := hu2
  subst hu2'
  have hcU : DLk (setVarHOLFinite (nm "stride") (.val (.word (nS KL)))
      (setVarHOLFinite (nm "t") (.val (.word H0)) { st with locals := s0.locals })) "cap" CP := by lks
  rw [ev_lv_w hcU] at hv2
  have e4 := (Option.some.inj hv2).symm
  subst e4
  have hns : NS s0 s0.memory (H0 + BitVec.ofNat 64 88) (setVarHOLFinite (nm "ncap") (.val (.word CP))
      (setVarHOLFinite (nm "stride") (.val (.word (nS KL)))
        (setVarHOLFinite (nm "t") (.val (.word H0)) { st with locals := s0.locals }))) :=
    ⟨hsm, hshp, hsgl, hsbe, hsd⟩
  refine hoare_seq (R := NP s0 KL CP H0 s0.memory (H0 + BitVec.ofNat 64 88) (fun _ => True)) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_assign fun t _ ⟨ht, w, hw, hw0⟩ v hv _ => ?_
      subst ht
      obtain ⟨a, b, ha, hb, hlt⟩ := cmp_true hw hw0
      have hnc : DLk (setVarHOLFinite (nm "ncap") (.val (.word CP))
          (setVarHOLFinite (nm "stride") (.val (.word (nS KL)))
            (setVarHOLFinite (nm "t") (.val (.word H0)) { st with locals := s0.locals }))) "ncap" CP := by lks
      rw [ev_lv_w hnc] at ha
      rw [ev_cw] at hb
      have ea := word_inj ha
      have eb := word_inj hb
      subst ea eb
      have hlt' := lower_true hlt
      rw [ev_cw] at hv
      have e5 := (Option.some.inj hv).symm
      subst e5
      have hCe : nC CP = BitVec.ofNat 64 2 := by unfold nC; rw [if_pos (by simpa using hlt')]
      refine ⟨rfl, hns, ⟨by lks, by lks, by lks, by lks, ?_⟩, trivial⟩
      unfold DLk; rw [lk_set_self, hCe]
    · refine hoare_skip fun t _ ⟨ht, hw⟩ => ?_
      subst ht
      obtain ⟨a, b, ha, hb, hlt⟩ := cmp_false hw
      have hnc : DLk (setVarHOLFinite (nm "ncap") (.val (.word CP))
          (setVarHOLFinite (nm "stride") (.val (.word (nS KL)))
            (setVarHOLFinite (nm "t") (.val (.word H0)) { st with locals := s0.locals }))) "ncap" CP := by lks
      rw [ev_lv_w hnc] at ha
      rw [ev_cw] at hb
      have ea := word_inj ha
      have eb := word_inj hb
      subst ea eb
      have hge := lower_false hlt
      have hCe : nC CP = CP := by unfold nC; rw [if_neg (by simp at hge; omega)]
      refine ⟨rfl, hns, ⟨by lks, by lks, by lks, by lks, ?_⟩, trivial⟩
      rw [hCe]; exact hnc
  -- the four header stores
  refine hoare_seq (new_store s0 KL CP H0 (k := 0) (fun t hl _ => ev_lv_w hl.2.1) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (new_store s0 KL CP H0 (k := 8) (fun t hl _ => ev_lv_w hl.2.2.2.1) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (new_store s0 KL CP H0 (k := 16) (fun t hl _ => ev_lv_w hl.2.2.1) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (new_store s0 KL CP H0 (k := 24) (fun t _ _ => ev_cw t 0) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  -- the key array
  have hZ1 : ∀ t : PanSemStateFiniteExact 64 σ, NL KL CP H0 t → True → ev t (szE (lv (nm "stride"))) =
      some (.val (.word ((nC CP + BitVec.ofNat 64 1) * nS KL))) :=
    fun t hl _ => ev_mul2 (ev_add2 (ev_lv_w hl.2.2.2.2) (ev_cw t 1)) (ev_lv_w hl.2.2.2.1)
  refine new_alloc s0 KL CP H0 hC hKL hCP (E' := fun t => DLk t "keys" (H0 + BitVec.ofNat 64 88))
    (fun _ _ _ h => h) (by rw [h88]; omega) (by rw [h88]; omega) (by rw [sz1, Nat.mul_mod, hS8]; simp)
    hZ1 (fun t st _ _ => by unfold DLk; exact lk_set_self _ _ _) (by decide) fun hsum1 => ?_
  refine hoare_seq (new_store s0 KL CP H0 (k := 32) (fun t _ hx => ev_lv_w hx) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  -- the node array
  have hK1 : (H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL).toNat =
      H0.toNat + 88 + ((nC CP).toNat + 1) * (nS KL).toNat := by
    rw [toNat_add_lt (by rw [h88, sz1]; rw [h88, sz1] at hsum1; omega), h88, sz1]
  refine new_alloc s0 KL CP H0 hC hKL hCP
    (E' := fun t => DLk t "keys" (H0 + BitVec.ofNat 64 88) ∧
      DLk t "nodes" (H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL))
    (fun _ _ _ h => h) (by rw [hK1]; rw [h88, sz1] at hsum1; omega)
    (by rw [hK1]; have : ((nC CP).toNat + 1) * (nS KL).toNat % 8 = 0 := by
          rw [Nat.mul_mod, hS8]; simp
        omega)
    (by rw [sz2]; omega) (fun t hl _ => ev_mul2 (ev_add2 (ev_lv_w hl.2.2.2.2) (ev_cw t 1)) (ev_cw t 32))
    (fun t st _ hx => ⟨by unfold DLk at *; rw [lk_set_ne _ _ (by decide)]; exact hx,
      by unfold DLk; exact lk_set_self _ _ _⟩) (by decide) fun hsum2 => ?_
  refine hoare_seq (new_store s0 KL CP H0 (k := 40) (fun t _ hx => ev_lv_w hx.2) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  -- the order array
  have hK2 : (H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL +
      (nC CP + BitVec.ofNat 64 1) * BitVec.ofNat 64 32).toNat =
      H0.toNat + 88 + ((nC CP).toNat + 1) * (nS KL).toNat + ((nC CP).toNat + 1) * 32 := by
    rw [toNat_add_lt (by rw [hK1, sz2]; rw [hK1, sz2] at hsum2; omega), hK1, sz2]
  refine new_alloc s0 KL CP H0 hC hKL hCP
    (E' := fun t => (DLk t "keys" (H0 + BitVec.ofNat 64 88) ∧
      DLk t "nodes" (H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL)) ∧
      DLk t "order" (H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL +
        (nC CP + BitVec.ofNat 64 1) * BitVec.ofNat 64 32))
    (fun _ _ _ h => h) (by rw [hK2]; rw [hK1, sz2] at hsum2; omega)
    (by rw [hK2]; have : ((nC CP).toNat + 1) * (nS KL).toNat % 8 = 0 := by
          rw [Nat.mul_mod, hS8]; simp
        omega)
    (by rw [sz3]; omega) (fun t hl _ => ev_mul2 (ev_add2 (ev_lv_w hl.2.2.2.2) (ev_cw t 1)) (ev_cw t 8))
    (fun t st _ hx => ⟨⟨by unfold DLk at *; rw [lk_set_ne _ _ (by decide)]; exact hx.1,
      by unfold DLk at *; rw [lk_set_ne _ _ (by decide)]; exact hx.2⟩,
      by unfold DLk; exact lk_set_self _ _ _⟩) (by decide) fun hsum3 => ?_
  -- the tail
  refine hoare_seq (new_store s0 KL CP H0 (k := 48) (fun t _ hx => ev_lv_w hx.2) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (new_store s0 KL CP H0 (k := 56) (fun t _ _ => ev_cw t 0) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (new_store s0 KL CP H0 (k := 64) (fun t _ _ => ev_cw t 1) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (new_store s0 KL CP H0 (k := 72) (fun t _ _ => ev_cw t 0) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (new_store s0 KL CP H0 (k := 80) (fun t hl _ => ev_lv_w hl.2.2.2.2) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_return fun t _ ⟨_, ⟨hm, hhp, hgl, hbe, hd⟩, hl, _⟩ v hv => ?_
  rw [ev_lv_w hl.1] at hv
  have e6 := (Option.some.inj hv).symm
  subst e6
  intro v' hv'
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
  subst hv'
  have hK3 : (H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL +
      (nC CP + BitVec.ofNat 64 1) * BitVec.ofNat 64 32 +
      (nC CP + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat =
      H0.toNat + 88 + ((nC CP).toNat + 1) * (nS KL).toNat + ((nC CP).toNat + 1) * 32 +
        ((nC CP).toNat + 1) * 8 := by
    rw [toNat_add_lt (by rw [hK2, sz3]; rw [hK2, sz3] at hsum3; omega), hK2, sz3]
  have hSC : ((nC CP).toNat + 1) * (nS KL).toNat % 8 = 0 := by rw [Nat.mul_mod, hS8]; simp
  have hsum3' : H0.toNat + 88 + ((nC CP).toNat + 1) * (nS KL).toNat + ((nC CP).toNat + 1) * 32 +
      ((nC CP).toNat + 1) * 8 ≤ heapEnd := by rw [hK2, sz3] at hsum3; omega
  refine ⟨_, hhp, ?_, ?_, ?_⟩
  · rw [hK3, footprint, nS_toNat KL hKL, nC_toNat]
    simp only [Nat.mul_add, Nat.add_mul]
    split <;> omega
  · rwa [hK3]
  · rw [hK3]; omega

end body

/-- **`htab_new` creates a well-formed empty table** (the FunSpec form). -/
theorem funSpec_htab_new_heap_exact (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_new") (fun vs s r u => ∀ KL CP H0 : BitVec 64,
      vs = [.val (.word KL), .val (.word CP)] → s.globals.lookup hpN = some (.val (.word H0)) →
      H0.toNat ≤ heapEnd → H0.toNat % 8 = 0 → KL.toNat ≤ 2 ^ 16 → CP.toNat ≤ 2 ^ 20 →
      ∀ v, r = .returned v → ∃ H1 : BitVec 64, u.globals.lookup hpN = some (.val (.word H1)) ∧ H1.toNat = H0.toNat + footprint KL CP ∧ H1.toNat ≤ heapEnd ∧ H1.toNat % 8 = 0) := by
  intro vs body callee rs hl s hs hloc r hr KL CP H0 hvs hH hHle hH8 hKL hCP v hv
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, hAB, -, -, hA, hB⟩ := lookupCode_two code_htab_new (by decide) hl
  rw [hvs] at hAB
  simp only [List.cons.injEq, and_true] at hAB
  obtain ⟨rfl, rfl⟩ := hAB
  have hk0 : s.locals.lookup (nm "key_len") = some (.val (.word KL)) := by rw [hloc]; exact hA
  have hc0 : s.locals.lookup (nm "cap") = some (.val (.word CP)) := by rw [hloc]; exact hB
  have H := newBody_heap_exact s KL CP H0 hC hKL hCP hk0 hc0 hH hHle hH8 s hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H
  exact H v rfl


#print axioms funSpec_htab_new_heap_exact
end InitECandidate.Solver.Spec.Inv
