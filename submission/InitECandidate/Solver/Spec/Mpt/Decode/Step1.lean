import InitECandidate.Solver.Spec.Mpt.Decode.Inv

/-!
# Mode 1 of the decode loop: `_decode_step` and the record push

`wd_m1`: from the invariant in mode 1, the iteration ends in the invariant with a lower
measure. A node result moves to mode 0 (measure `-1`). A record push links the fresh record
`q` (`sp' ≤ q`, `q + 88 ≤ sp`) on top of the chain and moves to mode 2: the scratch term drops
by at least 88, the potential rises by `psi q ≤ 46`, the mode term by 1.
-/

namespace InitECandidate.Solver.Spec.Mpt.Dec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

/-- A record survives a change that keeps its cells `+8 … +32` and the heap below `U`. -/
theorem recW_frame {M M' : Mem} {L U : Nat} {r : BitVec 64} (h : RecW M L U r)
    (hc : ∀ k : BitVec 64, (k = 8 ∨ k = 16 ∨ k = 24 ∨ k = 32) → M' (r + k) = M (r + k))
    (hb : ∀ b : BitVec 64, b.toNat < U → M' b = M b) (hU : U ≤ 2 ^ 64) : RecW M' L U r := by
  have e8 := rd_eq_of (hc 8 (by decide))
  have e16 := rd_eq_of (hc 16 (by decide))
  have e24 := rd_eq_of (hc 24 (by decide))
  have e32 := rd_eq_of (hc 32 (by decide))
  have htop := recW_top h
  obtain ⟨hA, hE, hBr⟩ := h
  refine ⟨by rw [e24]; exact hA, fun hk => ?_, fun hk => ?_⟩
  · rw [e8] at hk
    obtain ⟨a, b⟩ := hE hk
    rw [e24]
    exact ⟨a, slen_frame (by omega) (fun b hb1 hb2 => hb b (by omega)) b⟩
  · rw [e8] at hk
    obtain ⟨a, b, c, d⟩ := hBr hk
    rw [e24, e16, e32]
    exact ⟨a, b, c, slen_frame (by omega) (fun b hb1 hb2 => hb b (by omega)) d⟩

theorem ld_then {s : State σ} {x : MlS} {w : BitVec 64} {k c : Nat}
    (hx : s.locals.lookup x = some (.val (.word w)))
    (hc : ∃ v, ev s (.cmp .equal (.load .one (.op .add [lv x, cw k])) (cw c)) =
      some (.val (.word v)) ∧ v ≠ 0) : rd s.memory (w + BitVec.ofNat 64 k) = BitVec.ofNat 64 c := by
  obtain ⟨v, hv, hv0⟩ := hc
  obtain ⟨a, b, ha, hb, hab⟩ := cmp_true hv hv0
  have e := ev_ld hx k _ ha
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at e
  subst e
  rw [ev_cw] at hb; cases hb
  exact equal_true hab

theorem ld_else {s : State σ} {x : MlS} {w : BitVec 64} {k c : Nat}
    (hx : s.locals.lookup x = some (.val (.word w)))
    (hc : ev s (.cmp .equal (.load .one (.op .add [lv x, cw k])) (cw c)) = some (.val (.word 0))) :
    rd s.memory (w + BitVec.ofNat 64 k) ≠ BitVec.ofNat 64 c := by
  obtain ⟨a, b, ha, hb, hab⟩ := cmp_false hc
  have e := ev_ld hx k _ ha
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at e
  subst e
  rw [ev_cw] at hb; cases hb
  exact equal_false hab

theorem wdMode_0 : wdMode (BitVec.ofNat 64 0) = 0 := by decide
theorem wdMode_1 : wdMode (BitVec.ofNat 64 1) = 1 := by decide
theorem wdMode_2 : wdMode (BitVec.ofNat 64 2) = 2 := by decide
theorem wdMode_1' : wdMode 1 = 1 := by decide

theorem lt_heapEnd_sp {p : Ptrs} (h : p.Ordered) : p.hp ≤ heapEnd ∧ heapEnd ≤ p.sp := by
  obtain ⟨-, h2, h3, h4, -⟩ := h; omega

/-- **Mode 1.** -/
theorem wd_m1 {W : BitVec 64 → Nat → Mem → Prop} (hW : WFrame W) {H : Nat}
    (hds : FreshFoot σ X (nm "_decode_step") (DecPreS H) (DecQ H)) {DB : BitVec 64} {sp0 k : Nat} :
    Hoare σ X (fun s => ∃ (p : Ptrs) (T R S N G : BitVec 64) (U : Nat), ptrsOf s = some p ∧
        WLoc DB T R 1 S N G s.locals ∧ G ≠ 0 ∧ WCore W DB H sp0 s.memory p T R 1 S N U ∧
        k = (p.sp - heapEnd) + wPot s.memory p.sp sp0 T + 1 + 1)
      wdM1 (WPost W DB H sp0 k) := by
  unfold wdM1
  refine hoare_decCallS hds fun s _ ⟨p, T, R, S, N, G, U, hp, hloc, hG, hcore, hk⟩ vs hvs callee v
    st hR _ _ => ?_
  obtain ⟨hdb, htop, hres, hmode, -, hcn, hgo⟩ := hloc
  obtain ⟨hN, hPl⟩ := hcn rfl
  obtain ⟨hsp0, hHb, hWm, hord, hsp, hHU, hUhp, hch, -, hNlt, -⟩ := hcore
  obtain ⟨hSb, hSN⟩ := hNlt rfl
  obtain ⟨vdb, r1, rfl, -, hr1⟩ := evs_cons_inv hvs
  obtain ⟨vp, r2, rfl, hv2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨vn, r3, rfl, hv3, hr3⟩ := evs_cons_inv hr2
  simp only [evs, evalListHOLExact, Option.some.injEq] at hr3
  subst hr3
  rw [ev_lv, hN] at hv3
  simp only [Option.some.injEq] at hv3
  subst hv3
  rw [ev_lv, hPl] at hv2
  simp only [Option.some.injEq] at hv2
  subst hv2
  obtain ⟨p', hp', hord', hmono, hfresh, d0, d1, rfl, hd0, hd1⟩ :=
    hR _ rfl p hp hord ⟨vdb, S, N, rfl, hSb, hSN, p, hp, by omega⟩
  obtain ⟨hhp, hesp⟩ := lt_heapEnd_sp hord
  obtain ⟨hhp', hesp'⟩ := lt_heapEnd_sp hord'
  have hUsp : U ≤ p.sp := by omega
  have hB : Benign p.sp sp0 U s.memory st.memory := freshFoot_benign le_rfl hsp0 hUhp hfresh
  have hfr := wChain_frame (M' := st.memory) hsp0 hHb (sp0 - p.sp) p.sp U U T rfl hUsp
    (fun hT => recW_top (wChain_unfold hch hT).2.2.1) hB hch
  have hW1 := w_benign hW hWm hB hHU
  obtain ⟨m1, m2, m3⟩ := hmono
  set t0 := setVarHOLFinite (nm "d") (.rStruct [.val (.word d0), .val (.word d1)])
    { st with locals := s.locals } with ht0
  have hp0 : ptrsOf t0 = some p' := (ptrsOf_frame rfl).trans hp'
  have hl0 : ∀ y, y ≠ nm "d" → t0.locals.lookup y = s.locals.lookup y :=
    fun y hy => lk_set_ne _ _ (Ne.symm hy)
  have hd0e : ev t0 (.rfield 0 (lv (nm "d"))) = some (.val (.word d0)) :=
    ev_rfield_w (lk_set_self _ _ _) rfl
  have hd1e : ev t0 (.rfield 1 (lv (nm "d"))) = some (.val (.word d1)) :=
    ev_rfield_w (lk_set_self _ _ _) rfl
  refine hoare_conseq (P := fun t => t = t0) ?_ (fun _ _ h => h)
    (fun r t _ _ h => wPost_restore (y := nm "d") (by decide) _ h)
  unfold wdM1K
  refine hoare_ite ?_ ?_
  · -- a node result
    intro t hctx ⟨ht, hc⟩
    subst ht
    have h0 : d0 = 0 := by have := eq_of_then hd0e hc; simpa using this
    refine (?_ : Hoare σ X (fun u => u = t0) _ _) _ hctx rfl
    refine hoare_seq_eq (hoare_assign_eq hd1e) (hoare_assign_fin (ev_cw _ 0) ?_)
    intro _
    set t2 := setVarHOLFinite (nm "mode") (.val (.word (BitVec.ofNat 64 0)))
      (setVarHOLFinite (nm "result") (.val (.word d1)) t0)
    have hl2 : ∀ y, y ≠ nm "mode" → y ≠ nm "result" → y ≠ nm "d" →
        t2.locals.lookup y = s.locals.lookup y := fun y h1 h2 h3 => by
      rw [lk_set_ne _ _ (Ne.symm h1), lk_set_ne _ _ (Ne.symm h2), hl0 y h3]
    have hloc2 : WLoc DB T d1 (BitVec.ofNat 64 0) S N G t2.locals :=
      ⟨by rw [hl2 _ (by decide) (by decide) (by decide)]; exact hdb,
        by rw [hl2 _ (by decide) (by decide) (by decide)]; exact htop,
        by rw [lk_set_ne _ _ (by decide), lk_set_self], lk_set_self _ _ _,
        fun h => absurd h (by decide), fun h => absurd h (by decide),
        by rw [hl2 _ (by decide) (by decide) (by decide)]; exact hgo⟩
    have hp2 : ptrsOf t2 = some p' := (ptrsOf_frame rfl).trans hp0
    have hmo := wChain_mono (lo' := p'.sp) (U' := U) m3 le_rfl hfr.1
    refine ⟨⟨p', T, d1, BitVec.ofNat 64 0, S, N, G, U, hp2, hloc2, hsp0, hHb, hW1, hord', by omega,
      hHU, by omega, hmo.1, fun _ _ => ?_, fun h => absurd h (by decide),
      fun h => absurd h (by decide)⟩, ?_⟩
    · rcases hd0 h0 with e | ⟨e1, e2⟩
      · exact Or.inl e
      · exact Or.inr ⟨by omega, e2⟩
    · rw [wdMu_of hp2 hloc2 hG, hk]
      show (p'.sp - heapEnd) + wPot st.memory p'.sp sp0 T + wdMode (BitVec.ofNat 64 0) + 1 < _
      rw [hmo.2, hfr.2, wdMode_0]
      omega
  · -- a record push
    intro t hctx ⟨ht, hc⟩
    subst ht
    have h0 : d0 ≠ 0 := by have := ne_of_else hd0e hc; simpa using this
    obtain ⟨hq1, hq2, hArr, hrec, hq32⟩ := hd1 h0
    have hd1z : d1 ≠ 0 := by
      intro e; subst e; simp at hq1; have := hesp'; unfold heapEnd at this; omega
    have hq64 : d1.toNat + 88 < 2 ^ 64 := by simp only [scratchEnd] at hsp0; omega
    have hA : ev t0 (.op .add [.rfield 1 (lv (nm "d")), cw 0]) = some (.val (.word d1)) := by
      rw [ev_add2 hd1e (ev_cw _ 0)]; simp
    have hTv : ev t0 (lv (nm "top")) = some (.val (.word T)) := by
      rw [ev_lv, hl0 _ (by decide)]; exact htop
    refine (?_ : Hoare σ X (fun u => u = t0) _ _) _ hctx rfl
    refine hoare_seq_eq (hoare_store_eq hA hTv) ?_
    set t1 := { t0 with memory := upd t0.memory d1 (.word T) } with ht1
    set M1 := upd st.memory d1 (.word T) with hM1
    have hm1 : t1.memory = M1 := rfl
    refine hoare_seq_eq (hoare_assign_eq (x := nm "top") (s0 := t1) hd1e) ?_
    set t2 := setVarHOLFinite (nm "top") (.val (.word d1)) t1
    have htop2 : t2.locals.lookup (nm "top") = some (.val (.word d1)) := lk_set_self _ _ _
    -- memory facts after the link store
    have hne : ∀ j : BitVec 64, (j = 8 ∨ j = 16 ∨ j = 24 ∨ j = 32) → M1 (d1 + j) = st.memory (d1 + j) := by
      intro j hj
      exact upd_out (by rcases hj with rfl | rfl | rfl | rfl <;> bv_omega)
    have hlow : ∀ b : BitVec 64, b.toNat < d1.toNat → M1 b = st.memory b :=
      fun b hb => upd_out (by intro e; subst e; omega)
    have hrec1 : RecW M1 H p'.hp d1 :=
      recW_frame hrec hne (fun b hb => hlow b (by omega)) (by omega)
    have hBl : Benign p.sp sp0 U st.memory M1 :=
      benign_upd (Or.inl (by omega)) (Or.inr (by omega))
    have htl := wChain_frame (M' := M1) hsp0 hHb (sp0 - p.sp) p.sp U U T rfl hUsp
      (fun hT => recW_top (wChain_unfold hfr.1 hT).2.2.1) hBl hfr.1
    have h24 : rd M1 (d1 + 24) = rd st.memory (d1 + 24) := rd_eq_of (hne 24 (by decide))
    have hUa : U ≤ (rd M1 (d1 + 24)).toNat := by rw [h24]; omega
    have htl2 := wChain_mono (lo' := d1.toNat + 88) (U' := (rd M1 (d1 + 24)).toNat) (by omega) hUa htl.1
    have hlink : rd M1 d1 = T := by rw [hM1, rd_upd, if_pos rfl]
    have hch1 : WChain M1 p'.sp sp0 H p'.hp d1 :=
      wChain_cons hq1 (by omega) hrec1 (by rw [hlink]; exact htl2.1)
    have hW2 : W DB H M1 := w_benign hW hW1 hBl hHU
    have hl2 : ∀ y, y ≠ nm "top" → y ≠ nm "d" → t2.locals.lookup y = s.locals.lookup y :=
      fun y h1 h2 => by rw [lk_set_ne _ _ (Ne.symm h1)]; exact hl0 y h2
    have hm2 : t2.memory = M1 := rfl
    refine hoare_seq (R := fun r u => r = none ∧ ∃ S' : BitVec 64,
        u = setVarHOLFinite (nm "slot") (.val (.word S')) t2 ∧ (rd M1 (d1 + 8) = 1 → S' = 1) ∧
          (rd M1 (d1 + 8) ≠ 1 → S' = 0)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_ite ?_ ?_
      · intro u hctx ⟨hu, hc⟩
        subst hu
        have hk1 := ld_then htop2 hc
        rw [hm2] at hk1
        have hk1' : rd M1 (d1 + 8) = 1 := by simpa using hk1
        have HH : Hoare σ X (fun u => u = t2) (.assign .local (nm "slot") (cw 1))
            (fun r u => r = none ∧ ∃ S' : BitVec 64,
              u = setVarHOLFinite (nm "slot") (.val (.word S')) t2 ∧ (rd M1 (d1 + 8) = 1 → S' = 1) ∧
                (rd M1 (d1 + 8) ≠ 1 → S' = 0)) :=
          hoare_post (hoare_assign_eq (ev_cw _ 1))
            (fun r u _ _ ⟨hr, hu⟩ => ⟨hr, BitVec.ofNat 64 1, hu, fun _ => by simp,
              fun h => absurd hk1' h⟩)
        exact HH _ hctx rfl
      · intro u hctx ⟨hu, hc⟩
        subst hu
        have hk1 := ld_else htop2 hc
        rw [hm2] at hk1
        have hk1' : rd M1 (d1 + 8) ≠ 1 := by simpa using hk1
        have HH : Hoare σ X (fun u => u = t2) (.assign .local (nm "slot") (cw 0))
            (fun r u => r = none ∧ ∃ S' : BitVec 64,
              u = setVarHOLFinite (nm "slot") (.val (.word S')) t2 ∧ (rd M1 (d1 + 8) = 1 → S' = 1) ∧
                (rd M1 (d1 + 8) ≠ 1 → S' = 0)) :=
          hoare_post (hoare_assign_eq (ev_cw _ 0))
            (fun r u _ _ ⟨hr, hu⟩ => ⟨hr, BitVec.ofNat 64 0, hu, fun h => absurd h hk1',
              fun _ => by simp⟩)
        exact HH _ hctx rfl
    · intro u hctx ⟨_, S', hu, hS1, hS0⟩
      subst hu
      refine hoare_assign_fin (ev_cw _ 2) ?_ _ hctx rfl
      intro _
      set t4 := setVarHOLFinite (nm "mode") (.val (.word (BitVec.ofNat 64 2)))
        (setVarHOLFinite (nm "slot") (.val (.word S')) t2)
      have hl4 : ∀ y, y ≠ nm "mode" → y ≠ nm "slot" → y ≠ nm "top" → y ≠ nm "d" →
          t4.locals.lookup y = s.locals.lookup y := fun y h1 h2 h3 h4 => by
        rw [lk_set_ne _ _ (Ne.symm h1), lk_set_ne _ _ (Ne.symm h2)]; exact hl2 y h3 h4
      have hloc4 : WLoc DB d1 R (BitVec.ofNat 64 2) S' N G t4.locals :=
        ⟨by rw [hl4 _ (by decide) (by decide) (by decide) (by decide)]; exact hdb,
          by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact htop2,
          by rw [hl4 _ (by decide) (by decide) (by decide) (by decide)]; exact hres,
          lk_set_self _ _ _, fun _ => by rw [lk_set_ne _ _ (by decide), lk_set_self],
          fun h => absurd h (by decide),
          by rw [hl4 _ (by decide) (by decide) (by decide) (by decide)]; exact hgo⟩
      have hp4 : ptrsOf t4 = some p' := (ptrsOf_frame rfl).trans hp0
      have hm4 : t4.memory = M1 := rfl
      have h8 : rd M1 (d1 + 8) = rd st.memory (d1 + 8) := rd_eq_of (hne 8 (by decide))
      have h32 : rd M1 (d1 + 32) = rd st.memory (d1 + 32) := rd_eq_of (hne 32 (by decide))
      refine ⟨⟨p', d1, R, BitVec.ofNat 64 2, S', N, G, p'.hp, hp4, hloc4, ?_⟩, ?_⟩
      · rw [hm4]
        refine ⟨hsp0, hHb, hW2, hord', by omega, by omega, le_rfl, hch1,
          fun _ h => absurd (by simp) h, fun h => absurd h (by decide), fun _ => ⟨hd1z, hS1, ?_⟩⟩
        intro hk
        rw [hS0 hk, h32, hq32 (by rw [← h8]; exact hk)]
      · rw [wdMu_of hp4 hloc4 hG, hk, hm4, wPot_unfold hd1z hq1 (by omega), hlink, htl2.2, htl.2,
          hfr.2]
        have := psi_le M1 d1
        rw [wdMode_2]
        omega

end InitECandidate.Solver.Spec.Mpt.Dec
