import InitECandidate.Solver.MemSafe.Dn.LoopM1
import InitECandidate.Solver.MemSafe.Dn.ResolveV

set_option autoImplicit false

/-!
# The decoder loop, mode 2: resolve a child

`wdM2_G`: `var arr = ld (top + 24); var r = _resolve_step(db, arr[slot]); st top + 80, …`; a
node result becomes `result` (mode 0), a slice to decode becomes `cur_p`/`cur_n` (mode 1).
Stage 2b: the call's slice `arr[slot]` lies in a `tVAL` object (the head record's `RecS`), the node DB
`db` is `NdbR`, and a result slice to decode is again inside a `tVAL` object.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type}

/-- A store `st top + k, e` into the head record (`k = 32`, `40` or `80`). -/
theorem gp_stHead {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) (hsp0 : p0.sp ≤ scratchEnd)
    {L : LocalsH → Prop} {P : Gam → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {DB T : BitVec 64} (hT : T ≠ 0) {k : Nat} (hk : k = 32 ∨ k = 40 ∨ k = 80) (hk8 : k % 8 = 0)
    {e : ExpHOL 64} (hx : ∀ m, L m → m.lookup (nm "top") = some (.val (.word T)))
    (hv : ∀ (s : State σ) v, L s.locals → ev s e = some v → ∃ V, v = .val (.word V)) :
    HoareG σ guestCtx (GI (aB vs s0 Γ0 p0) L
        (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧ P Γ))
      (.store (.op .add [lv (nm "top"), cw k]) e)
      (GP (aB vs s0 Γ0 p0) L
        (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧ P Γ) Rv) := by
  have hse : scratchEnd < 2 ^ 64 := by decide
  have hk88 : k < 88 := by omega
  have cellFacts : ∀ Γ q M, FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T →
      ¬ InObj Γ (T + BitVec.ofNat 64 k).toNat ∧ ¬ (aB vs s0 Γ0 p0).p0.Allocated (T + BitVec.ofNat 64 k).toNat := by
    intro Γ q M hF
    obtain ⟨-, -, ⟨h8, h88, hc⟩, -, -, -, -⟩ := frG_unfold hF hT
    have e : (T + BitVec.ofNat 64 k).toNat = T.toNat + k := Spec.Mpt.Dec.toNat_add_lt (by omega)
    have := hc _ ⟨by rw [e]; omega, by rw [e]; omega, by rw [e]; omega⟩
    exact ⟨this.1, this.2.1⟩
  refine gp_stOut ha (A := T + BitVec.ofNat 64 k) (fun s hL => ev_add_cw (hx _ hL) k)
    (fun Γ q M hE => cellFacts Γ q M hE.1) hv (fun s Γ q V _ hE _ => ⟨frG_upd_head (by omega) hT hk hE.1,
      ndbR_upd hE.2.1 (rcell_ne_out (cellFacts Γ q s.memory hE.1).1), hE.2.2⟩)


theorem ev_ldSlot0 {s : State σ} {Ar S : BitVec 64}
    (harr : s.locals.lookup (nm "arr") = some (.val (.word Ar)))
    (hsl : s.locals.lookup (nm "slot") = some (.val (.word S))) :
    ∀ v, ev s (.load .one (.op .add [lv (nm "arr"), .panop .mul [lv (nm "slot"), cw 16]])) = some v →
      v = .val (.word (rd s.memory (Ar + S * BitVec.ofNat 64 16))) := by
  intro v hv
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [ev_add2 (ev_lw harr) (ev_mul2 (ev_lw hsl) (ev_cw _ 16))] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  rw [Struct.mem_word s.memory _]

theorem ev_ldSlot8 {s : State σ} {Ar S : BitVec 64}
    (harr : s.locals.lookup (nm "arr") = some (.val (.word Ar)))
    (hsl : s.locals.lookup (nm "slot") = some (.val (.word S))) :
    ∀ v, ev s (.load .one (.op .add [lv (nm "arr"), .panop .mul [lv (nm "slot"), cw 16], cw 8])) = some v →
      v = .val (.word (rd s.memory (Ar + (S * BitVec.ofNat 64 16 + BitVec.ofNat 64 8)))) := by
  intro v hv
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [ev_add3 (ev_lw harr) (ev_mul2 (ev_lw hsl) (ev_cw _ 16)) (ev_cw _ 8)] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  rw [Struct.mem_word s.memory _]

theorem slot_addr0 {S : BitVec 64} (Ar : BitVec 64) (hS : S.toNat < 2 ^ 32) :
    Ar + S * BitVec.ofNat 64 16 = Ar + BitVec.ofNat 64 (16 * S.toNat) := by
  congr 1
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_mul, BitVec.toNat_ofNat]
  omega

theorem slot_addr8 {S : BitVec 64} (Ar : BitVec 64) (hS : S.toNat < 2 ^ 32) :
    Ar + (S * BitVec.ofNat 64 16 + BitVec.ofNat 64 8) = Ar + BitVec.ofNat 64 (16 * S.toNat + 8) := by
  congr 1
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
  omega

/-- A store `st top + k, e` into the head record (`k = 32`, `40` or `80`). -/
theorem gp_stHeadM {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) (hsp0 : p0.sp ≤ scratchEnd)
    {L : LocalsH → Prop} {P : Gam → Prop} {Pm : Mem → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {DB T : BitVec 64} (hT : T ≠ 0) {k : Nat} (hk : k = 32 ∨ k = 40 ∨ k = 80) (hk8 : k % 8 = 0)
    (hPm : ∀ (M : Mem) (V : BitVec 64), Pm M → Pm (Struct.upd M (T + BitVec.ofNat 64 k) V))
    {e : ExpHOL 64} (hx : ∀ m, L m → m.lookup (nm "top") = some (.val (.word T)))
    (hv : ∀ (s : State σ) v, L s.locals → ev s e = some v → ∃ V, v = .val (.word V)) :
    HoareG σ guestCtx (GI (aB vs s0 Γ0 p0) L
        (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧ P Γ ∧ Pm M))
      (.store (.op .add [lv (nm "top"), cw k]) e)
      (GP (aB vs s0 Γ0 p0) L
        (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧ P Γ ∧ Pm M) Rv) := by
  have hse : scratchEnd < 2 ^ 64 := by decide
  have hk88 : k < 88 := by omega
  have cellFacts : ∀ Γ q M, FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T →
      ¬ InObj Γ (T + BitVec.ofNat 64 k).toNat ∧ ¬ (aB vs s0 Γ0 p0).p0.Allocated (T + BitVec.ofNat 64 k).toNat := by
    intro Γ q M hF
    obtain ⟨-, -, ⟨h8, h88, hc⟩, -, -, -, -⟩ := frG_unfold hF hT
    have e : (T + BitVec.ofNat 64 k).toNat = T.toNat + k := Spec.Mpt.Dec.toNat_add_lt (by omega)
    have := hc _ ⟨by rw [e]; omega, by rw [e]; omega, by rw [e]; omega⟩
    exact ⟨this.1, this.2.1⟩
  refine gp_stOut ha (A := T + BitVec.ofNat 64 k) (fun s hL => ev_add_cw (hx _ hL) k)
    (fun Γ q M hE => cellFacts Γ q M hE.1) hv (fun s Γ q V _ hE _ => ⟨frG_upd_head (by omega) hT hk hE.1,
      ndbR_upd hE.2.1 (rcell_ne_out (cellFacts Γ q s.memory hE.1).1), hE.2.2.1, hPm _ _ hE.2.2.2⟩)


def LM2 (DB T R G S : BitVec 64) (m : LocalsH) : Prop :=
  LK DB T R 2 G m ∧ m.lookup (nm "slot") = some (.val (.word S))

/-- **Mode 2** (`wdM2`). -/
theorem wdM2_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) (hL0 : Layout Types.guestC p0 Γ0)
    (hsp0 : p0.sp ≤ scratchEnd) {DB T R G S : BitVec 64} (hG : G ≠ 0) (hT : T ≠ 0) :
    HoareG σ guestCtx (GI (aB vs s0 Γ0 p0) (LM2 DB T R G S)
      (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧
        S.toNat < (if rd M (T + 8) = 1 then 2 else 17)))
      Spec.Mpt.Dec.wdM2 (GPJ (aB vs s0 Γ0 p0) (JG (aB vs s0 Γ0 p0)) (RvB (aB vs s0 Γ0 p0))) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  unfold Spec.Mpt.Dec.wdM2
  refine gp_decJV ha.hH (L1 := fun v m => LM2 DB T R G S m ∧ m.lookup (nm "arr") = some v)
    (E1 := fun v Γ q M => (FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧
        S.toNat < (if rd M (T + 8) = 1 then 2 else 17)) ∧
      v = .val (.word (rd M (T + BitVec.ofNat 64 24))))
    (fun s _ hL v _ => ⟨⟨lk_set hL.1 (by decide) (by decide) (by decide) (by decide) (by decide) v,
        by rw [lk_set_ne _ _ (by decide)]; exact hL.2⟩, by simp [setVarHOLFinite, FUPDATE]⟩)
    (fun s Γ q hL hE v hv => ⟨hE, ev_ldTopk hL.1.2.1 24 v hv⟩) ?_
    (fun t o h => jg_res ha.hH (by decide) (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) t o h)
  intro v
  refine gp_decCallJ ha sumSpecA_resolve_step_V (funSpec_true _) (by simp [rsSig]) (fun _ => rfl)
    (L1 := fun w m => (∃ r0 r1 r2 r3 : BitVec 64,
      w = .rStruct [.val (.word r0), .val (.word r1), .val (.word r2), .val (.word r3)]) ∧
      m.lookup (nm "r") = some w ∧ LK DB T R 2 G m)
    (E1 := fun w Γ q M => (FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB) ∧
      ∀ r0 r1 r2 r3 : BitVec 64,
      w = .rStruct [.val (.word r0), .val (.word r1), .val (.word r2), .val (.word r3)] →
        (r0 = 0 → Fits Γ Types.nodeU r1) ∧ (r0 ≠ 0 → Hooks.VInR Types.tVAL Γ r1 r2))
    (fun s Γ q _ hL hh hE vs1 hvs => ?_)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hsc hE hLc hQ co => ⟨hQ.1, fun w hw _ => by
      subst hw
      refine ⟨⟨frG_call rfl rfl hL0 hsp0 co hsc hE.1.1, ndbR_co rfl rfl co hE.1.2.1⟩,
        fun r0 r1 r2 r3 hv4 => ?_⟩
      have h := hQ.2 _ rfl q q' co.heap0.2.1 co.heap.2.1
      exact ⟨fun h0 => (h.1 _ _ _ _ hv4 h0), fun h0 => (h.2 r0 r1 r2 r3 hv4 h0)⟩⟩)
    (fun s st w hL hsh => ⟨w4_of_sh hsh, by simp [setVarHOLFinite, FUPDATE],
      lk_set hL.1.1 (by decide) (by decide) (by decide) (by decide) (by decide) w⟩)
    ?_ (fun t o h => jg_res ha.hH (by decide) (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) t o h)
  · have hA := anyArgsG (a := aB vs s0 Γ0 p0) (sg' := rsSig) (Γ := Γ) (q := q) (by simp [rsSig]) (by simp [rsSig]) hvs
    obtain ⟨v1, vs2, rfl, h1, hvs2⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs3, rfl, h2, hvs3⟩ := evs_cons_inv hvs2
    obtain ⟨v3, vs4, rfl, h3, hvs4⟩ := evs_cons_inv hvs3
    rw [evs_nil] at hvs4
    cases hvs4
    obtain ⟨⟨hFG, hND, hbd⟩, hvv⟩ := hE
    obtain ⟨⟨hLK, hsl⟩, harr0⟩ := hL
    have harr : s.locals.lookup (nm "arr") = some (.val (.word (rd s.memory (T + BitVec.ofNat 64 24)))) := by
      rw [harr0, hvv]
    have e1 : v1 = .val (.word DB) := by
      rw [ev_lv, hLK.1] at h1; exact (Option.some.inj h1).symm
    have e2 := ev_ldSlot0 harr hsl v2 h2
    have e3 := ev_ldSlot8 harr hsl v3 h3
    subst e1 e2 e3
    obtain ⟨-, -, -, -, -, hRS, -⟩ := frG_unfold hFG hT
    have hS32 : S.toNat < 2 ^ 32 := by
      have : S.toNat < (if rd s.memory (T + 8) = 1 then 2 else 17) := hbd
      split at this <;> omega
    have hvin := arrS_vin hRS.2.1 hRS.1 (j := S.toNat) hbd
    refine ⟨hA.1, hA.2, fun callee => ⟨DB, _, _, rfl, hND, ?_⟩⟩
    rw [slot_addr0 _ hS32, slot_addr8 _ hS32]
    exact hvin
  · intro w
    by_cases hw : ∃ r0 r1 r2 r3 : BitVec 64,
        w = .rStruct [.val (.word r0), .val (.word r1), .val (.word r2), .val (.word r3)]
    swap
    · exact hoareG_false fun s _ h => hw h.1.1
    obtain ⟨r0, r1, r2, r3, rfl⟩ := hw
    unfold Spec.Mpt.Dec.wdM2K
    let Lr : LocalsH → Prop := fun m => (∃ a0 a1 a2 a3 : BitVec 64,
        ValueHOL.rStruct [.val (.word r0), .val (.word r1), .val (.word r2), .val (.word r3)] =
          .rStruct [.val (.word a0), .val (.word a1), .val (.word a2), .val (.word a3)]) ∧
        m.lookup (nm "r") =
          some (.rStruct [.val (.word r0), .val (.word r1), .val (.word r2), .val (.word r3)]) ∧
        LK DB T R 2 G m
    have hr : ∀ m, Lr m → m.lookup (nm "r") =
        some (.rStruct [.val (.word r0), .val (.word r1), .val (.word r2), .val (.word r3)]) :=
      fun m h => h.2.1
    let P : Gam → Prop := fun Γ => (r0 = 0 → Fits Γ Types.nodeU r1) ∧
      (r0 ≠ 0 → Hooks.VInR Types.tVAL Γ r1 r2)
    let EP : Gam → Ptrs → Mem → Prop := fun Γ q M =>
      FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧ P Γ
    have hmapE : ∀ (s : State σ),
        GI (aB vs s0 Γ0 p0) Lr (fun Γ q M => (FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧
          Hooks.NdbR Γ M DB) ∧ ∀ r0' r1' r2' r3' : BitVec 64,
          ValueHOL.rStruct [.val (.word r0), .val (.word r1), .val (.word r2), .val (.word r3)] =
            .rStruct [.val (.word r0'), .val (.word r1'), .val (.word r2'), .val (.word r3')] →
            (r0' = 0 → Fits Γ Types.nodeU r1') ∧ (r0' ≠ 0 → Hooks.VInR Types.tVAL Γ r1' r2')) s →
        GI (aB vs s0 Γ0 p0) Lr EP s :=
      fun s ⟨hL, Γ, q, he, hh, hsc, hE⟩ =>
        ⟨hL, Γ, q, he, hh, hsc, hE.1.1, hE.1.2, hE.2 r0 r1 r2 r3 rfl⟩
    refine hoareG_ite ?_ ?_
    · by_cases h0 : r0 = 0
      swap
      · exact hoareG_false fun s _ ⟨⟨hL, _⟩, hc⟩ =>
          h0 (by have := Spec.Mpt.Dec.eq_of_then (Spec.Mpt.Dec.ev_rfield_w (i := 0) (hr _ hL) rfl) hc
                 simpa using this)
      subst h0
      refine hoareG_pre (P := GI _ Lr EP) ?_ (fun s _ h => hmapE s h.1)
      refine gp_seqJ (gp_stHead ha hsp0 (P := P) (DB := DB) hT (k := 80) (by decide) (by decide)
        (fun m h => h.2.2.2.1) (fun s v _ hv => cw_word s 0 v hv)) ?_
      refine gp_seqJ (gp_assign ha.hH
        (L' := fun m => m.lookup (nm "r") = some (.rStruct [.val (.word 0), .val (.word r1),
          .val (.word r2), .val (.word r3)]) ∧ LK DB T r1 2 G m) (fun s _ hL v hv => ?_)) ?_
      · rw [Spec.Mpt.Dec.ev_rfield_w (i := 1) (hr _ hL) rfl] at hv
        cases hv
        obtain ⟨l1, l2, l3, l4, l5⟩ := hL.2.2
        exact ⟨lk_keep (by decide) hL.2.1, lk_keep (by decide) l1, lk_keep (by decide) l2,
          by simp [setVarHOLFinite, FUPDATE], lk_keep (by decide) l4, lk_keep (by decide) l5⟩
      refine gpj_of_gp (gp_assign ha.hH (L' := LK DB T r1 (BitVec.ofNat 64 0) G)
        (fun s _ hL v hv => ?_)) (jg_of (fun m h => h) (fun h => absurd h hG) ?_
          (fun h => absurd h (by decide)))
      · rw [ev_cw] at hv
        cases hv
        obtain ⟨l1, l2, l3, l4, l5⟩ := hL.2
        exact ⟨lk_keep (by decide) l1, lk_keep (by decide) l2, lk_keep (by decide) l3,
          by simp [setVarHOLFinite, FUPDATE], lk_keep (by decide) l5⟩
      · intro Γ q M hE
        exact ⟨hE.1, fun _ _ => hE.2.2.1 rfl, hE.2.1⟩
    · by_cases h0 : r0 = 0
      · subst h0
        exact hoareG_false fun s _ ⟨⟨hL, _⟩, hc⟩ =>
          Spec.Mpt.Dec.ne_of_else (Spec.Mpt.Dec.ev_rfield_w (i := 0) (hr _ hL) rfl) hc rfl
      refine hoareG_pre (P := GI _ Lr EP) ?_ (fun s _ h => hmapE s h.1)
      refine gp_seqJ (gp_stHead ha hsp0 (P := P) (DB := DB) hT (k := 80) (by decide) (by decide)
        (fun m h => h.2.2.2.1) (fun s v hL hv => ⟨r3, by
          rw [Spec.Mpt.Dec.ev_rfield_w (i := 3) (hr _ hL) rfl] at hv; exact (Option.some.inj hv).symm⟩)) ?_
      refine gp_seqJ (gp_assign ha.hH (L' := fun m => m.lookup (nm "r") =
          some (.rStruct [.val (.word r0), .val (.word r1), .val (.word r2), .val (.word r3)]) ∧
          LK DB T R 2 G m ∧ m.lookup (nm "cur_p") = some (.val (.word r1))) (fun s _ hL v hv => ?_)) ?_
      · rw [Spec.Mpt.Dec.ev_rfield_w (i := 1) (hr _ hL) rfl] at hv
        cases hv
        exact ⟨lk_keep (by decide) hL.2.1, lk_set hL.2.2 (by decide) (by decide) (by decide) (by decide)
          (by decide) _, by simp [setVarHOLFinite, FUPDATE]⟩
      refine gp_seqJ (gp_assign ha.hH (L' := fun m => m.lookup (nm "r") =
          some (.rStruct [.val (.word r0), .val (.word r1), .val (.word r2), .val (.word r3)]) ∧
          LK DB T R 2 G m ∧ m.lookup (nm "cur_p") = some (.val (.word r1)) ∧
          m.lookup (nm "cur_n") = some (.val (.word r2))) (fun s _ hL v hv => ?_)) ?_
      · rw [Spec.Mpt.Dec.ev_rfield_w (i := 2) hL.1 rfl] at hv
        cases hv
        exact ⟨lk_keep (by decide) hL.1, lk_set hL.2.1 (by decide) (by decide) (by decide) (by decide)
          (by decide) _, lk_keep (by decide) hL.2.2, by simp [setVarHOLFinite, FUPDATE]⟩
      refine gpj_of_gp (gp_assign ha.hH (L' := fun m => LK DB T R (BitVec.ofNat 64 1) G m ∧
          m.lookup (nm "cur_p") = some (.val (.word r1)) ∧ m.lookup (nm "cur_n") = some (.val (.word r2)))
        (fun s _ hL v hv => ?_)) (jg_of (fun m h => h.1) (fun h => absurd h hG) ?_
          (fun _ => ⟨r1, r2, fun m h => h.2, fun Γ q M hE => hE.2.2.2 h0⟩))
      · rw [ev_cw] at hv
        cases hv
        obtain ⟨l1, l2, l3, l4, l5⟩ := hL.2.1
        exact ⟨⟨lk_keep (by decide) l1, lk_keep (by decide) l2, lk_keep (by decide) l3,
          by simp [setVarHOLFinite, FUPDATE], lk_keep (by decide) l5⟩, lk_keep (by decide) hL.2.2.1,
          lk_keep (by decide) hL.2.2.2⟩
      · intro Γ q M hE
        exact ⟨hE.1, fun h _ => absurd rfl h, hE.2.1⟩

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.wdM2_G
