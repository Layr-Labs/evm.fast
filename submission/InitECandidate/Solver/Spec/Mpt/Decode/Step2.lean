import InitECandidate.Solver.Spec.Mpt.Decode.Step1

/-!
# Mode 2 of the decode loop: `_resolve_step` on the top record's child slot

`wd_m2`: the child slice handed to `_resolve_step` lies in the heap below `H` (the record's
array, `SLen`, at the slot the invariant names), the node DB predicate `W` holds, and the
iteration ends in mode 0 (a node result, measure `-2`) or mode 1 (a located slice to decode,
measure `-1`).
-/

namespace InitECandidate.Solver.Spec.Mpt.Dec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

/-- A store at or above `H` keeps `W`. -/
theorem w_upd_high {W : BitVec 64 → Nat → Mem → Prop} (hW : WFrame W) {db : BitVec 64} {H : Nat}
    {M : Mem} {a : BitVec 64} {x : HolWordLab 64} (h : W db H M) (ha : H ≤ a.toNat) :
    W db H (upd M a x) :=
  hW _ _ _ _ h fun b _ hb => upd_out (by intro e; subst e; omega)

/-- A store into the top record's occupancy or hash cell keeps the chain and its potential. -/
theorem wChain_head_keep {M : Mem} {lo hi L U : Nat} {T k v : BitVec 64} (hhi : hi ≤ scratchEnd)
    (hL : heapBase ≤ L) (hUlo : U ≤ lo) (hT : T ≠ 0) (h : WChain M lo hi L U T)
    (hk : k = 40 ∨ k = 80) :
    WChain (upd M (T + k) (.word v)) lo hi L U T ∧
      wPot (upd M (T + k) (.word v)) lo hi T = wPot M lo hi T := by
  have hh := wChain_head (v := v) hhi hL hUlo hT h (Or.inr hk) (fun e => by
    rcases hk with rfl | rfl <;> exact absurd e (by decide))
  obtain ⟨h1, h2, -, -⟩ := wChain_unfold h hT
  refine ⟨hh.1, ?_⟩
  rw [hh.2, wPot_unfold hT h1 h2]
  congr 1
  unfold psi
  have e8 : rd (upd M (T + k) (.word v)) (T + 8) = rd M (T + 8) := by
    rw [rd_upd, if_neg (by rcases hk with rfl | rfl <;> bv_omega)]
  have e32 : rd (upd M (T + k) (.word v)) (T + 32) = rd M (T + 32) := by
    rw [rd_upd, if_neg (by rcases hk with rfl | rfl <;> bv_omega)]
  rw [e8, e32]

theorem slot_addr0 {A S : BitVec 64} (hS : S.toNat < 17) :
    A + S * BitVec.ofNat 64 16 = A + BitVec.ofNat 64 (16 * S.toNat) := by
  congr 1
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_mul, BitVec.toNat_ofNat]
  omega

theorem slot_addr {A S : BitVec 64} (hS : S.toNat < 17) :
    A + (S * BitVec.ofNat 64 16 + BitVec.ofNat 64 8) = A + BitVec.ofNat 64 (16 * S.toNat + 8) := by
  congr 1
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
  omega

/-- **Mode 2.** -/
theorem wd_m2 {W : BitVec 64 → Nat → Mem → Prop} (hW : WFrame W) {H : Nat}
    (hrs : FreshFoot σ X (nm "_resolve_step") (ResPre W H) (ResQ H)) {DB : BitVec 64}
    {sp0 k : Nat} :
    Hoare σ X (fun s => ∃ (p : Ptrs) (T R S N G : BitVec 64) (U : Nat), ptrsOf s = some p ∧
        WLoc DB T R 2 S N G s.locals ∧ G ≠ 0 ∧ WCore W DB H sp0 s.memory p T R 2 S N U ∧
        k = (p.sp - heapEnd) + wPot s.memory p.sp sp0 T + 2 + 1)
      wdM2 (WPost W DB H sp0 k) := by
  unfold wdM2
  refine hoare_dec fun s _ ⟨p, T, R, S, N, G, U, hp, hloc, hG, hcore, hk⟩ va hva _ => ?_
  obtain ⟨hdb, htop, hres, hmode, hsl, -, hgo⟩ := hloc
  have hS := hsl rfl
  obtain ⟨hsp0, hHb, hWm, hord, hsp, hHU, hUhp, hch, -, -, hm2⟩ := hcore
  obtain ⟨hT0, hS1, hS2⟩ := hm2 rfl
  obtain ⟨hhp, hesp⟩ := lt_heapEnd_sp hord
  have hUsp : U ≤ p.sp := by omega
  obtain ⟨h1, h2, hrec, -⟩ := wChain_unfold hch hT0
  rw [ev_ld htop 24 _ hva]
  set A := rd s.memory (T + BitVec.ofNat 64 24) with hA
  set s1 := setVarHOLFinite (nm "arr") (.val (.word A)) s with hs1
  refine hoare_conseq (P := fun t => t = s1) ?_ (fun _ _ h => h)
    (fun r t _ _ h => wPost_restore (y := nm "arr") (by decide) _ h)
  have hl1 : ∀ y, y ≠ nm "arr" → s1.locals.lookup y = s.locals.lookup y :=
    fun y hy => lk_set_ne _ _ (Ne.symm hy)
  have harr : s1.locals.lookup (nm "arr") = some (.val (.word A)) := lk_set_self _ _ _
  -- the slot's slice is located below `H`
  have hslen : heapBase ≤ (rd s.memory (A + S * BitVec.ofNat 64 16)).toNat ∧
      (rd s.memory (A + S * BitVec.ofNat 64 16)).toNat +
        (rd s.memory (A + (S * BitVec.ofNat 64 16 + BitVec.ofNat 64 8))).toNat ≤ H := by
    have hA' : rd s.memory (T + 24) = A := by rw [hA]; rfl
    by_cases hk1 : rd s.memory (T + 8) = 1
    · have hS' := hS1 hk1
      subst hS'
      have := (hrec.2.1 hk1).2
      rw [hA'] at this
      have e := this 1 (by decide)
      rw [slot_addr (by decide), slot_addr0 (by decide)]
      simpa using e
    · have hS' := hS2 hk1
      obtain ⟨-, -, hi16, hsl17⟩ := hrec.2.2 hk1
      rw [hA'] at hsl17
      rw [← hS'] at hi16
      rw [slot_addr (by omega), slot_addr0 (by omega)]
      exact hsl17 _ (by omega)
  refine hoare_decCallS hrs fun s1' _ hs1' vs hvs callee v st hR _ _ => ?_
  subst hs1'
  obtain ⟨vdb, r1, rfl, hv1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨vb, r2, rfl, hv2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨vn, r3, rfl, hv3, hr3⟩ := evs_cons_inv hr2
  simp only [evs, evalListHOLExact, Option.some.injEq] at hr3
  subst hr3
  rw [ev_lv, hl1 _ (by decide), hdb] at hv1
  simp only [Option.some.injEq] at hv1
  subst hv1
  obtain ⟨wa, hwa, -, rfl⟩ := ev_load_one hv3
  have hslv : s1.locals.lookup (nm "slot") = some (.val (.word S)) := by
    rw [hl1 _ (by decide)]; exact hS
  rw [ev_add3 (ev_lw harr) (ev_mul2 (ev_lw hslv) (ev_cw _ 16)) (ev_cw _ 8)] at hwa
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hwa
  subst hwa
  obtain ⟨wb, hwb, -, rfl⟩ := ev_load_one hv2
  rw [ev_add2 (ev_lw harr) (ev_mul2 (ev_lw hslv) (ev_cw _ 16))] at hwb
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hwb
  subst hwb
  have hm1 : s1.memory = s.memory := rfl
  rw [mem_word s1.memory, mem_word s1.memory] at hR
  obtain ⟨p', hp', hord', hmono, hfresh, r0, r1, r2, r3, rfl, hr0, hr1⟩ :=
    hR _ rfl p hp hord ⟨DB, _, _, rfl, hslen.1, hslen.2, p, hp, by omega, hWm⟩
  obtain ⟨hhp', hesp'⟩ := lt_heapEnd_sp hord'
  obtain ⟨m1, m2, m3⟩ := hmono
  have hB : Benign p.sp sp0 U s.memory st.memory := freshFoot_benign le_rfl hsp0 hUhp hfresh
  have hfr := wChain_frame (M' := st.memory) hsp0 hHb (sp0 - p.sp) p.sp U U T rfl hUsp
    (fun hT => recW_top (wChain_unfold hch hT).2.2.1) hB hch
  have hW1 := w_benign hW hWm hB hHU
  have hmo := wChain_mono (lo' := p'.sp) (U' := U) m3 le_rfl hfr.1
  set t0 := setVarHOLFinite (nm "r")
    (.rStruct [.val (.word r0), .val (.word r1), .val (.word r2), .val (.word r3)])
    { st with locals := s1.locals } with ht0
  have hp0 : ptrsOf t0 = some p' := (ptrsOf_frame rfl).trans hp'
  have hl0 : ∀ y, y ≠ nm "r" → y ≠ nm "arr" → t0.locals.lookup y = s.locals.lookup y :=
    fun y hy hy' => by rw [lk_set_ne _ _ (Ne.symm hy)]; exact hl1 y hy'
  have hre : ∀ i w, [Option.some (ValueHOL.val (HolWordLab.word r0)),
      some (.val (.word r1)), some (.val (.word r2)), some (.val (.word r3))][i]? = some (some w) →
      ev t0 (.rfield i (lv (nm "r"))) = some w := by
    intro i w h
    rw [ev_rfield (by rw [ev_lv]; exact lk_set_self _ _ _)]
    rcases i with _ | _ | _ | _ | i <;> simp_all
  have hr0e : ev t0 (.rfield 0 (lv (nm "r"))) = some (.val (.word r0)) := hre 0 _ rfl
  have hr1e : ev t0 (.rfield 1 (lv (nm "r"))) = some (.val (.word r1)) := hre 1 _ rfl
  have hr2e : ev t0 (.rfield 2 (lv (nm "r"))) = some (.val (.word r2)) := hre 2 _ rfl
  have hr3e : ev t0 (.rfield 3 (lv (nm "r"))) = some (.val (.word r3)) := hre 3 _ rfl
  have htop0 : t0.locals.lookup (nm "top") = some (.val (.word T)) := by
    rw [hl0 _ (by decide) (by decide)]; exact htop
  have hSt : ev t0 (.op .add [lv (nm "top"), cw 80]) = some (.val (.word (T + BitVec.ofNat 64 80))) :=
    ev_add_cw htop0 80
  have hk80 : BitVec.ofNat 64 80 = 40 ∨ BitVec.ofNat 64 80 = 80 := Or.inr (by decide)
  refine hoare_conseq (P := fun t => t = t0) ?_ (fun _ _ h => h)
    (fun r t _ _ h => wPost_restore (y := nm "r") (by decide) _ h)
  unfold wdM2K
  refine hoare_ite ?_ ?_
  · -- a node result: mode 0
    intro t hctx ⟨ht, hc⟩
    subst ht
    have h0 : r0 = 0 := by have := eq_of_then hr0e hc; simpa using this
    refine (?_ : Hoare σ X (fun u => u = t0) _ _) _ hctx rfl
    refine hoare_seq_eq (hoare_store_eq hSt (ev_cw _ 0)) ?_
    set t1 := { t0 with memory := upd t0.memory (T + BitVec.ofNat 64 80) (.word (BitVec.ofNat 64 0)) }
    have hhd := wChain_head_keep (v := BitVec.ofNat 64 0) hsp0 hHb (by omega) hT0 hmo.1 hk80
    refine hoare_seq_eq (hoare_assign_eq (s0 := t1) (x := nm "result") hr1e)
      (hoare_assign_fin (ev_cw _ 0) ?_)
    intro _
    set t3 := setVarHOLFinite (nm "mode") (.val (.word (BitVec.ofNat 64 0)))
      (setVarHOLFinite (nm "result") (.val (.word r1)) t1)
    have hl3 : ∀ y, y ≠ nm "mode" → y ≠ nm "result" → y ≠ nm "r" → y ≠ nm "arr" →
        t3.locals.lookup y = s.locals.lookup y := fun y a b c d => by
      rw [lk_set_ne _ _ (Ne.symm a), lk_set_ne _ _ (Ne.symm b)]; exact hl0 y c d
    have hloc3 : WLoc DB T r1 (BitVec.ofNat 64 0) S N G t3.locals :=
      ⟨by rw [hl3 _ (by decide) (by decide) (by decide) (by decide)]; exact hdb,
        by rw [hl3 _ (by decide) (by decide) (by decide) (by decide)]; exact htop,
        by rw [lk_set_ne _ _ (by decide), lk_set_self], lk_set_self _ _ _,
        fun h => absurd h (by decide), fun h => absurd h (by decide),
        by rw [hl3 _ (by decide) (by decide) (by decide) (by decide)]; exact hgo⟩
    have hp3 : ptrsOf t3 = some p' := (ptrsOf_frame rfl).trans hp0
    have hm3 : t3.memory = upd st.memory (T + BitVec.ofNat 64 80) (.word (BitVec.ofNat 64 0)) := rfl
    refine ⟨⟨p', T, r1, BitVec.ofNat 64 0, S, N, G, U, hp3, hloc3, ?_⟩, ?_⟩
    · rw [hm3]
      refine ⟨hsp0, hHb, w_upd_high hW hW1 ?_, hord', by omega, hHU, by omega, hhd.1,
        fun _ _ => ?_, fun h => absurd h (by decide), fun h => absurd h (by decide)⟩
      · rw [toNat_add_lt (by simp only [scratchEnd] at hsp0; omega)]; omega
      · rcases hr0 h0 with e | ⟨e1, e2⟩
        · exact Or.inl e
        · exact Or.inr ⟨by omega, e2⟩
    · rw [wdMu_of hp3 hloc3 hG, hk, hm3, hhd.2, hmo.2, hfr.2, wdMode_0]
      omega
  · -- a slice to decode: mode 1
    intro t hctx ⟨ht, hc⟩
    subst ht
    have h0 : r0 ≠ 0 := by have := ne_of_else hr0e hc; simpa using this
    refine (?_ : Hoare σ X (fun u => u = t0) _ _) _ hctx rfl
    refine hoare_seq_eq (hoare_store_eq hSt hr3e) ?_
    set t1 := { t0 with memory := upd t0.memory (T + BitVec.ofNat 64 80) (.word r3) }
    have hhd := wChain_head_keep (v := r3) hsp0 hHb (by omega) hT0 hmo.1 hk80
    refine hoare_seq_eq (hoare_assign_eq (s0 := t1) (x := nm "cur_p") hr1e) ?_
    refine hoare_seq_eq (hoare_assign_eq (x := nm "cur_n") hr2e) (hoare_assign_fin (ev_cw _ 1) ?_)
    intro _
    set t4 := setVarHOLFinite (nm "mode") (.val (.word (BitVec.ofNat 64 1)))
      (setVarHOLFinite (nm "cur_n") (.val (.word r2))
        (setVarHOLFinite (nm "cur_p") (.val (.word r1)) t1))
    have hl4 : ∀ y, y ≠ nm "mode" → y ≠ nm "cur_n" → y ≠ nm "cur_p" → y ≠ nm "r" →
        y ≠ nm "arr" → t4.locals.lookup y = s.locals.lookup y := fun y a b c d e => by
      rw [lk_set_ne _ _ (Ne.symm a), lk_set_ne _ _ (Ne.symm b), lk_set_ne _ _ (Ne.symm c)]
      exact hl0 y d e
    have hloc4 : WLoc DB T R (BitVec.ofNat 64 1) r1 r2 G t4.locals :=
      ⟨by rw [hl4 _ (by decide) (by decide) (by decide) (by decide) (by decide)]; exact hdb,
        by rw [hl4 _ (by decide) (by decide) (by decide) (by decide) (by decide)]; exact htop,
        by rw [hl4 _ (by decide) (by decide) (by decide) (by decide) (by decide)]; exact hres,
        lk_set_self _ _ _, fun h => absurd h (by decide),
        fun _ => ⟨by rw [lk_set_ne _ _ (by decide), lk_set_self],
          by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_self]⟩,
        by rw [hl4 _ (by decide) (by decide) (by decide) (by decide) (by decide)]; exact hgo⟩
    have hp4 : ptrsOf t4 = some p' := (ptrsOf_frame rfl).trans hp0
    have hm4 : t4.memory = upd st.memory (T + BitVec.ofNat 64 80) (.word r3) := rfl
    refine ⟨⟨p', T, R, BitVec.ofNat 64 1, r1, r2, G, U, hp4, hloc4, ?_⟩, ?_⟩
    · rw [hm4]
      refine ⟨hsp0, hHb, w_upd_high hW hW1 ?_, hord', by omega, hHU, by omega, hhd.1,
        fun h => absurd (by decide) h, fun _ => hr1 h0, fun h => absurd h (by decide)⟩
      rw [toNat_add_lt (by simp only [scratchEnd] at hsp0; omega)]; omega
    · rw [wdMu_of hp4 hloc4 hG, hk, hm4, hhd.2, hmo.2, hfr.2, wdMode_1]
      omega

end InitECandidate.Solver.Spec.Mpt.Dec
