import InitECandidate.Solver.MemSafe.Rcpt.EncLogs
import InitECandidate.Solver.Spec.TrieWalk

set_option autoImplicit false

/-!
# `logs_encoded_bound` as a function of the entry memory

`funSpec_bound`: it changes nothing, and with the field bounds of `LogsK` (`nt ≤ 2^20`, `dn ≤ 2^30`,
`N ≤ 2^25`: no wrap) it returns `16 + Σ_i (64 + 33 nt_i + dn_i) = 16 + Sk M logs N`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

def BndB (M : Mem) (Lg : BitVec 64) : Prop :=
  (∀ i, i < lgN M Lg → lgNt M Lg i ≤ 2 ^ 20 ∧ lgDn M Lg i ≤ 2 ^ 30) ∧ lgN M Lg ≤ 2 ^ 25

theorem ev_add4 {s : State σ} {a b c d : ExpHOL 64} {x y z w : BitVec 64}
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y)))
    (hc : ev s c = some (.val (.word z))) (hd : ev s d = some (.val (.word w))) :
    ev s (.op .add [a, b, c, d]) = some (.val (.word (x + (y + (z + w))))) := by
  rw [ev_op (xs := [x, y, z, w]) (evs_cons ha (evs_cons hb (evs_cons hc (evs_cons hd evs_nil))))]
  show some (ValueHOL.val (HolWordLab.word (x + (y + (z + (w + 0)))))) = _
  simp

theorem word_of_isWord {v : ValueHOL 64} (h : valueIsWord v = true) : ∃ w, v = .val (.word w) := by
  cases v with
  | val wl => cases wl with
    | word w => exact ⟨w, rfl⟩
  | rStruct _ => simp [valueIsWord] at h
  | nStruct _ _ => simp [valueIsWord] at h

theorem ev_add4_inv {s : State σ} {a b c d : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.op .add [a, b, c, d]) = some v) :
    ∃ x y z w : BitVec 64, ev s a = some (.val (.word x)) ∧ ev s b = some (.val (.word y)) ∧
      ev s c = some (.val (.word z)) ∧ ev s d = some (.val (.word w)) ∧
      v = .val (.word (x + (y + (z + w)))) := by
  have hl : ∃ vs, evs s [a, b, c, d] = some vs ∧ vs.all valueIsWord = true := by
    simp only [ev, evs, evalHOLExact] at h ⊢
    split at h
    · rename_i vs hvs
      split at h
      · rename_i hall
        exact ⟨vs, hvs, hall⟩
      · simp at h
    · simp at h
  obtain ⟨vs, hvs, hall⟩ := hl
  obtain ⟨va, vs1, rfl, ha, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨vb, vs2, rfl, hb, hvs2⟩ := evs_cons_inv hvs1
  obtain ⟨vc, vs3, rfl, hc, hvs3⟩ := evs_cons_inv hvs2
  obtain ⟨vd, vs4, rfl, hd, hvs4⟩ := evs_cons_inv hvs3
  have : vs4 = [] := by
    simp only [evs, evalListHOLExact, Option.some.injEq] at hvs4
    exact hvs4.symm
  subst this
  simp only [List.all_cons, List.all_nil, Bool.and_true, Bool.and_eq_true] at hall
  obtain ⟨hwa, hwb, hwc, hwd⟩ := hall
  obtain ⟨x, rfl⟩ := word_of_isWord hwa
  obtain ⟨y, rfl⟩ := word_of_isWord hwb
  obtain ⟨z, rfl⟩ := word_of_isWord hwc
  obtain ⟨w, rfl⟩ := word_of_isWord hwd
  refine ⟨x, y, z, w, ha, hb, hc, hd, ?_⟩
  rw [ev_add4 ha hb hc hd] at h
  exact (Option.some.inj h).symm

theorem ev_ldk_word {s : State σ} {x : MlS} {k : Nat} {v : ValueHOL 64} (hv : ev s (ldk x k) = some v) :
    ∃ a, v = .val (.word a) := by
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  cases hm : s.memory w with
  | word a => exact ⟨a, rfl⟩

theorem ev_mulLd {s : State σ} {x : MlS} {k c : Nat} {v : ValueHOL 64}
    (h : ev s (.panop .mul [ldk x k, cw c]) = some v) :
    ∃ a, ev s (ldk x k) = some (.val (.word a)) ∧ v = .val (.word (a * BitVec.ofNat 64 c)) := by
  obtain ⟨vs, hvs⟩ := ev_panop_evs h
  obtain ⟨va, vs1, rfl, ha, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨a, rfl⟩ := ev_ldk_word ha
  have := ev_mul2 ha (ev_cw s c)
  rw [this] at h
  exact ⟨a, ha, (Option.some.inj h).symm⟩

/-- A load, memory equal to `M`. -/
theorem ev_ldM {s : State σ} {M : Mem} (hmem : s.memory = M) {x : MlS} {Xv : BitVec 64}
    (hx : LB s.locals x Xv) {k : Nat} {v : ValueHOL 64} (hv : ev s (ldk x k) = some v) :
    v = .val (.word (rd M (Xv + BitVec.ofNat 64 k))) := by
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [ev_add2 (ev_lb hx) (ev_cw _ k)] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  rw [hmem]
  cases hM : M (Xv + BitVec.ofNat 64 k) with
  | word w => simp [rd, hM]

theorem ev_arrM {s : State σ} {M : Mem} {Lg : BitVec 64} (hmem : s.memory = M) {i : Nat}
    (hp : LB s.locals Aw.pN (lgP M Lg)) (hiL : LW s.locals iN i) {v : ValueHOL 64}
    (hv : ev s (.load .one (.op .add [lv Aw.pN, .panop .mul [lv iN, cw 8]])) = some v) :
    v = .val (.word (lgRec M Lg i)) := by
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [ev_add2 (ev_lb hp) (ev_mul2 (ev_lwn hiL) (ev_cw _ 8))] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  rw [ofNat_mul8', hmem]
  cases hM : M (lgP M Lg + BitVec.ofNat 64 (8 * i)) with
  | word w => simp [lgRec, lgArr, rd, hM]

def JB (M : Mem) (Lg : BitVec 64) (i : Nat) (m : Locals) : Prop :=
  LB m logsN Lg ∧ LW m nN (lgN M Lg) ∧ LB m Aw.pN (lgP M Lg) ∧ LW m totN (16 + Sk M Lg i) ∧
    LW m iN i ∧ i ≤ lgN M Lg

def boundBody : ProgHOL 64 :=
  .dec nN .one (ldk logsN 8) (.dec Aw.pN .one (ldk logsN 0) (.dec totN .one (cw 16)
    (.dec iN .one (cw 0) (.seq (.while (.cmp .less (lv iN) (lv nN))
      (.dec logN .one (.load .one (.op .add [lv Aw.pN, .panop .mul [lv iN, cw 8]]))
        (.seq (.assign .local totN (.op .add [lv totN, cw 64, .panop .mul [ldk logN 16, cw 33],
            ldk logN 32]))
          (.assign .local iN (.op .add [lv iN, cw 1])))))
      (.return (lv totN))))))

theorem code_bound_body : guestCode (nm "logs_encoded_bound") =
    some ([(logsN, .one)], boundBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_logs_encoded_bound =
      (nm "logs_encoded_bound", [(logsN, .one)], boundBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 834) (by decide)) ⟨_, rfl⟩ h

theorem funSpec_bound (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "logs_encoded_bound") (fun vs s r t => Good (some r) →
      ∀ Lg : BitVec 64, argW vs 0 = some Lg → BndB s.memory Lg →
        t.globals = s.globals ∧ t.memory = s.memory ∧ ∀ v, r = .returned v →
          v = .val (.word (BitVec.ofNat 64 (16 + Sk s.memory Lg (lgN s.memory Lg))))) := by
  intro vs body callee rs hl s0 hs hloc r hr hg Lg0 hLg hB
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA', hla⟩ := lookupCode_one code_bound_body hl
  obtain ⟨Lg, rfl⟩ := val_of_shapeEq_one hA'
  simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hLg
  subst hLg
  set M := s0.memory with hMdef
  let Rf : BitVec 64 → Prop := fun _ => False
  have hmem : ∀ s : State σ, ModifiesOnly Rf M s.memory → s.memory = M :=
    fun s h => funext fun a => h a (fun h => h)
  have hw : ∀ i, i < lgN M Lg → lgWb M Lg i ≤ 2 ^ 31 := fun i hi =>
    lgWb_le M Lg i (hB.1 i hi).1 (hB.1 i hi).2
  have hsk : ∀ i, i ≤ lgN M Lg → Sk M Lg i ≤ 2 ^ 56 := fun i hi => sk_small hB.2 hw hi
  have hN := hB.2
  let Ret : ValueHOL 64 → Prop := fun v =>
    v = .val (.word (BitVec.ofNat 64 (16 + Sk M Lg (lgN M Lg))))
  have main : HoareG σ X (LPre Rf s0 (fun m => LB m logsN Lg)) boundBody (LZ Rf s0 (fun _ => True) Ret) := by
    unfold boundBody
    refine hoareG_decZ' (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
    intro s hs1 hpre v hv hsh
    have hv' := ev_ldM (hmem s hpre.2.2) hpre.1 hv
    rw [rd_n] at hv'
    subst hv'
    refine hoareG_preZ (L' := fun m => LB m logsN Lg ∧ LW m nN (lgN M Lg)) ?_ (fun m hm => by
      subst hm
      exact ⟨lb_keep hpre.1 (by decide), lw_set⟩)
    refine hoareG_decZ' (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
    intro s hs2 hpre2 v hv hsh
    have hv' := ev_ldM (hmem s hpre2.2.2) hpre2.1.1 hv
    rw [rd_p] at hv'
    subst hv'
    refine hoareG_preZ (L' := fun m => (LB m logsN Lg ∧ LW m nN (lgN M Lg)) ∧ LB m Aw.pN (lgP M Lg)) ?_
      (fun m hm => by
        subst hm
        exact ⟨⟨lb_keep hpre2.1.1 (by decide), lw_keep hpre2.1.2 (by decide)⟩, lb_set⟩)
    refine hoareG_decZ' (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
    intro s hs3 hpre3 v hv hsh
    rw [ev_cw] at hv
    cases hv
    refine hoareG_preZ (L' := fun m => ((LB m logsN Lg ∧ LW m nN (lgN M Lg)) ∧ LB m Aw.pN (lgP M Lg)) ∧
        LW m totN 16) ?_ (fun m hm => by
      subst hm
      exact ⟨⟨⟨lb_keep hpre3.1.1.1 (by decide), lw_keep hpre3.1.1.2 (by decide)⟩,
        lb_keep hpre3.1.2 (by decide)⟩, lw_set⟩)
    refine hoareG_decZ' (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
    intro s hs4 hpre4 v hv hsh
    rw [ev_cw] at hv
    cases hv
    refine hoareG_preZ (L' := JB M Lg 0) ?_ (fun m hm => by
      subst hm
      exact ⟨lb_keep hpre4.1.1.1.1 (by decide), lw_keep hpre4.1.1.1.2 (by decide),
        lb_keep hpre4.1.1.2 (by decide), lw_keep hpre4.1.2 (by decide), lw_set, Nat.zero_le _⟩)
    refine hoareG_seqZ (L2 := JB M Lg (lgN M Lg)) ?_ ?_
    · refine hoareG_preZ (L' := fun m => ∃ i, JB M Lg i m) ?_ (fun m hm => ⟨0, hm⟩)
      refine hoareG_whileZ (J := fun m => ∃ i, JB M Lg i m) ?_ ?_
      · refine hoareG_pre (P := fun s => ∃ i, LPre Rf s0 (fun m => JB M Lg i m ∧ i < lgN M Lg) s) ?_ ?_
        · refine hoareG_ex fun i => ?_
          refine hoareG_decZ' (L' := fun _ m' => ∃ i', JB M Lg i' m') ?_
            (fun m m' _ ⟨i', h⟩ => ⟨i', lb_res h.1 (by decide), lw_res h.2.1 (by decide),
              lb_res h.2.2.1 (by decide), lw_res h.2.2.2.1 (by decide), lw_res h.2.2.2.2.1 (by decide),
              h.2.2.2.2.2⟩)
          intro s hs hpre v hv hsh
          have hv' := ev_arrM (hmem s hpre.2.2) hpre.1.1.2.2.1 hpre.1.1.2.2.2.2.1 hv
          subst hv'
          refine hoareG_preZ (L' := fun m => (JB M Lg i m ∧ i < lgN M Lg) ∧ LB m logN (lgRec M Lg i)) ?_
            (fun m hm => by
              subst hm
              refine ⟨⟨?_, hpre.1.2⟩, lb_set⟩
              exact ⟨lb_keep hpre.1.1.1 (by decide), lw_keep hpre.1.1.2.1 (by decide),
                lb_keep hpre.1.1.2.2.1 (by decide), lw_keep hpre.1.1.2.2.2.1 (by decide),
                lw_keep hpre.1.1.2.2.2.2.1 (by decide), hpre.1.1.2.2.2.2.2⟩)
          refine hoareG_seqZ (L2 := fun m => LB m logsN Lg ∧ LW m nN (lgN M Lg) ∧ LB m Aw.pN (lgP M Lg) ∧
              LW m totN (16 + Sk M Lg (i + 1)) ∧ LW m iN i ∧ i < lgN M Lg) ?_ ?_
          · refine hoareG_assignZ' fun t ht hp w hw => ?_
            have hmo := hmem t hp.2.2
            obtain ⟨⟨⟨hl1, hl2, hl3, hl4, hl5, hl6⟩, hlt⟩, hlog⟩ := hp.1
            obtain ⟨x, y, z, w', ex, ey, ez, ew, rfl⟩ := ev_add4_inv hw
            have hx := ev_lwn hl4
            rw [hx] at ex
            have hy := ev_cw t 64
            rw [hy] at ey
            obtain ⟨a, ea, hz⟩ := ev_mulLd ez
            have hz' : z = a * BitVec.ofNat 64 33 := by simpa using hz
            subst hz'
            have hnt := ev_ldM hmo hlog ea
            have hdn := ev_ldM hmo hlog ew
            simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at ex ey hnt hdn
            subst ex
            subst ey
            subst hnt
            subst hdn
            rw [rec_nt] at *
            rw [rec_dn] at *
            refine ⟨lb_keep hl1 (by decide), lw_keep hl2 (by decide), lb_keep hl3 (by decide), ?_,
              lw_keep hl5 (by decide), hlt⟩
            unfold LW
            rw [lookup_update_self, ← BitVec.ofNat_mul, ofNat_add_ofNat', ofNat_add_ofNat',
              ofNat_add_ofNat']
            have e : 16 + Sk M Lg i + (64 + (lgNt M Lg i * 33 + lgDn M Lg i)) =
                16 + Sk M Lg (i + 1) := by rw [sk_succ]; omega
            rw [e]
          · refine hoareG_assignZ fun t ht hL v hv => ?_
            obtain ⟨hl1, hl2, hl3, hl4, hl5, hlt⟩ := hL
            rw [ev_add2 (ev_lwn hl5) (ev_cw _ 1)] at hv
            cases hv
            refine ⟨i + 1, lb_keep hl1 (by decide), lw_keep hl2 (by decide), lb_keep hl3 (by decide),
              lw_keep hl4 (by decide), ?_, by omega⟩
            unfold LW
            rw [lookup_update_self, ofNat_add_ofNat']
        · rintro s hs ⟨⟨⟨i, hj⟩, hb⟩, hc⟩
          refine ⟨i, ⟨hj, ?_⟩, hb⟩
          exact lt_of_cond hj.2.2.2.2.1 hj.2.1 (by have := hj.2.2.2.2.2; omega) (by omega) hc
      · rintro s hs ⟨i, hj⟩ hz
        have hnlt := nlt_of_exit hj.2.2.2.2.1 hj.2.1 (by have := hj.2.2.2.2.2; omega) (by omega) hz
        have : i = lgN M Lg := by have := hj.2.2.2.2.2; omega
        subst this
        exact hj
    · refine hoareG_returnZ ?_
      intro s hs hj v hv
      rw [ev_lwn hj.2.2.2.1] at hv
      cases hv
      rfl
  have H := main s0 hs (lpre_init (by rw [hloc]; exact hla)) (by rw [hr]; exact hg)
  rw [hr] at H
  refine ⟨H.1.1.1, funext fun a => H.1.1.2 a (fun h => h), fun v hv => H.1.2.2 v (by rw [hv])⟩

end InitECandidate.Solver.MemSafe.Rcpt

#print axioms InitECandidate.Solver.MemSafe.Rcpt.funSpec_bound
