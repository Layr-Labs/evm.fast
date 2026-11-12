import InitECandidate.Solver.MemSafe.Dn.LoopDefs
import InitECandidate.Solver.Spec.Mpt.Leaves.DecFinal

set_option autoImplicit false

/-!
# The decoder loop, mode 1: decode a slice

`wdM1_G`: `var d = _decode_step(db, cur_p, cur_n)`; a node result becomes `result` (mode 0), a
record result is linked to `top` and pushed (mode 2). The record's scratch location below the
caller's `scratch_ptr` comes from the cost lane's `DecQ` (`hdsG`).
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

theorem hdsG (H : Nat) :
    Spec.Mpt.Dec.FreshFoot σ guestCtx (nm "_decode_step") (Spec.Mpt.Dec.DecPreS H)
      (Spec.Mpt.Dec.DecQ H) :=
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  Spec.Mpt.Dec.freshFoot_decode_step hX (Spec.Mpt.Leaves.freshFoot_rlp_decode_fully hX)
    (Spec.Mpt.Leaves.freshFoot_rlp_list_to_slices hX) (Spec.Mpt.Leaves.freshFoot_rlp_item hX)
    (Spec.Mpt.Leaves.freshFoot_compact_to_nibbles hX)
    (Spec.Mpt.Leaves.freshFoot_node_new_branch hX Helpers.alignedDom_guestCtx) H

theorem lk_keep {s : State σ} {x y : MlS} {v : ValueHOL 64} {w : ValueHOL 64} (h : y ≠ x)
    (hy : s.locals.lookup y = some w) : (setVarHOLFinite x v s).locals.lookup y = some w := by
  rw [lk_set_ne _ _ (Ne.symm h)]; exact hy

/-- The looked-up locals of the loop. -/
def LK (DB T R Mo G : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "db") = some (.val (.word DB)) ∧ m.lookup (nm "top") = some (.val (.word T)) ∧
    m.lookup (nm "result") = some (.val (.word R)) ∧ m.lookup (nm "mode") = some (.val (.word Mo)) ∧
    m.lookup (nm "go") = some (.val (.word G))

theorem lk_set {DB T R Mo G : BitVec 64} {s : State σ} (h : LK DB T R Mo G s.locals) {x : MlS}
    (h1 : x ≠ nm "db") (h2 : x ≠ nm "top") (h3 : x ≠ nm "result") (h4 : x ≠ nm "mode")
    (h5 : x ≠ nm "go") (v : ValueHOL 64) : LK DB T R Mo G (setVarHOLFinite x v s).locals :=
  ⟨lk_keep (Ne.symm h1) h.1, lk_keep (Ne.symm h2) h.2.1, lk_keep (Ne.symm h3) h.2.2.1,
    lk_keep (Ne.symm h4) h.2.2.2.1, lk_keep (Ne.symm h5) h.2.2.2.2⟩

/-- From concrete locals and facts to the loop's typed invariant. -/
theorem jg_of {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    {DB T R Mo G : BitVec 64} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
    (hL : ∀ m, L m → LK DB T R Mo G m) (hGM : G = 0 → Mo ≠ 1 ∧ Mo ≠ 2)
    (hE : ∀ Γ q M, E Γ q M → FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧
      (Mo ≠ 1 → Mo ≠ 2 → Fits Γ Types.nodeU R) ∧ Hooks.NdbR Γ M DB)
    (hCur : Mo = 1 → ∃ CP CN : BitVec 64, (∀ m, L m → m.lookup (nm "cur_p") = some (.val (.word CP)) ∧
        m.lookup (nm "cur_n") = some (.val (.word CN))) ∧
      ∀ Γ q M, E Γ q M → Hooks.VInR Types.tVAL Γ CP CN) :
    ∀ t, GI (aB vs s0 Γ0 p0) L E t → JG (aB vs s0 Γ0 p0) t := by
  intro t ⟨hl, Γ, q, he, hh, hsc, hE'⟩
  obtain ⟨l1, l2, l3, l4, l5⟩ := hL _ hl
  obtain ⟨hF, hfit, hND⟩ := hE Γ q t.memory hE'
  exact ⟨T, R, Mo, G, l2, l3, l4, l5, hGM, Γ, q, he, hh, hsc, hF, hfit, ⟨DB, l1, hND⟩, fun hm1 => by
    obtain ⟨CP, CN, hlk, hv⟩ := hCur hm1
    exact ⟨CP, CN, (hlk _ hl).1, (hlk _ hl).2, hv Γ q t.memory hE'⟩⟩

/-- Locals at a mode-1 iteration. -/
def LM1 (DB T R CP CN G : BitVec 64) (m : LocalsH) : Prop :=
  LK DB T R 1 G m ∧ m.lookup (nm "cur_p") = some (.val (.word CP)) ∧
    m.lookup (nm "cur_n") = some (.val (.word CN))

/-- **Mode 1** (`wdM1`). -/
theorem wdM1_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) (hL0 : Layout Types.guestC p0 Γ0)
    (hsp0 : p0.sp ≤ scratchEnd) {H : Nat} {DB T R CP CN G : BitVec 64} (hG : G ≠ 0) :
    HoareG σ guestCtx (GI (aB vs s0 Γ0 p0) (LM1 DB T R CP CN G)
      (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ heapBase ≤ CP.toNat ∧
        CP.toNat + CN.toNat ≤ H ∧ H ≤ q.hp ∧ Hooks.VInR Types.tVAL Γ CP CN ∧ Hooks.NdbR Γ M DB))
      Spec.Mpt.Dec.wdM1 (GPJ (aB vs s0 Γ0 p0) (JG (aB vs s0 Γ0 p0)) (RvB (aB vs s0 Γ0 p0))) := by
  have hse : scratchEnd < 2 ^ 64 := by decide
  unfold Spec.Mpt.Dec.wdM1
  refine gp_decCallJ ha sumSpecA_decode_step_G (hdsG H) (by simp [dsSig]) (fun _ => rfl)
    (L1 := fun v m => (∃ d0 d1 : BitVec 64, v = .rStruct [.val (.word d0), .val (.word d1)]) ∧
      m.lookup (nm "d") = some v ∧ LK DB T R 1 G m)
    (E1 := fun v Γ q M => Hooks.NdbR Γ M DB ∧ ∀ d0 d1 : BitVec 64,
      v = .rStruct [.val (.word d0), .val (.word d1)] →
      (d0 = 0 → Fits Γ Types.nodeU d1 ∧ FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T) ∧
      (d0 ≠ 0 → FrE (aB vs s0 Γ0 p0) d1 Γ q ∧ heapEnd ≤ d1.toNat ∧
        (rd M (d1 + 8) ≠ 1 → BrO (aB vs s0 Γ0 p0).p0 Γ (rd M (d1 + 16))) ∧ RecS Γ q M d1 ∧
        q.sp ≤ d1.toNat ∧ d1.toNat + 88 ≤ p0.sp ∧
        FrG (aB vs s0 Γ0 p0) Γ q M (d1.toNat + 88) p0.sp T))
    (fun s Γ q _ hL hh hE vs1 hvs => ?_) (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hsc hE hLc hQ co => ?_)
    (fun s st v hL hsh => ⟨w2_of_sh hsh, by simp [setVarHOLFinite, FUPDATE],
      lk_set hL.1 (by decide) (by decide) (by decide) (by decide) (by decide) v⟩)
    ?_ (fun t o h => jg_res ha.hH (by decide) (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) t o h)
  · -- the arguments
    have hvs0 : evs s [lv (nm "db"), lv (nm "cur_p"), lv (nm "cur_n")] =
        some [.val (.word DB), .val (.word CP), .val (.word CN)] :=
      evs_cons (by rw [ev_lv]; exact hL.1.1) (evs_cons (by rw [ev_lv]; exact hL.2.1)
        (evs_cons (by rw [ev_lv]; exact hL.2.2) evs_nil))
    rw [hvs0] at hvs
    cases hvs
    exact ⟨(anyArgsG (by simp [dsSig]) rfl hvs0).1, fun x hx => argCells_any (by simp [dsSig]) hx,
      fun callee => ⟨DB, CP, CN, rfl, hE.2.1, ⟨q, hh.2.1, by
        have := hE.2.2.1; have := hE.2.2.2.1; omega⟩, hE.2.2.2.2.1⟩⟩
  · -- the call's outcome
    refine ⟨hQ.1, fun v hv _ => ⟨ndbR_co rfl rfl co hE.2.2.2.2.2, fun d0 d1 hv2 => ?_⟩⟩
    subst hv
    have hvs0 : evs s [lv (nm "db"), lv (nm "cur_p"), lv (nm "cur_n")] =
        some [.val (.word DB), .val (.word CP), .val (.word CN)] :=
      evs_cons (by rw [ev_lv]; exact hL.1.1) (evs_cons (by rw [ev_lv]; exact hL.2.1)
        (evs_cons (by rw [ev_lv]; exact hL.2.2) evs_nil))
    rw [hvs0] at hvs
    cases hvs
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := co.heap0.2.1
    have hq' : ptrsOf st = some q' := co.heap.2.1
    have hDs := hQ.2 _ rfl q q' hpe hq' d0 d1 hv2
    have hF0 := frG_call0 rfl rfl hL0 hsp0 co hsc hE.1
    have hmo0 : p0.Mono q := co.heap0.2.2.1
    refine ⟨fun h0 => ⟨hDs.1 h0, frG_mono_lo co.mono.2.2 hF0⟩, fun h0 => ?_⟩
    obtain ⟨d18, hHE, hcells, hkind, hRS⟩ := hDs.2 h0
    obtain ⟨p', hp', -, -, -, hdq⟩ := hLc _ rfl q hpe (heap_ord co.heap0)
      ⟨.val (.word DB), CP, CN, rfl, hE.2.1, hE.2.2.1, q, hpe, hE.2.2.2.1⟩
    rw [hq'] at hp'
    cases hp'
    obtain ⟨e0, e1, he01, -, hrec⟩ := hdq
    rw [hv2] at he01
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
      HolWordLab.word.injEq, and_true] at he01
    obtain ⟨rfl, rfl⟩ := he01
    obtain ⟨hlo, hhi, -⟩ := hrec h0
    have hqs : q.sp ≤ p0.sp := hmo0.2.2
    refine ⟨⟨d18, by have := (heap_ord co.heap0).2.2.2.2.1; omega, fun y hy => ⟨(hcells y hy).1,
      fun hA => (hcells y hy).2.1 (Spec.Mpt.Dec.allocated_mono hmo0 hA), (hcells y hy).2.2⟩⟩, hHE,
      fun hk => ?_, hRS, hlo, by omega, frG_mono_lo hhi hF0⟩
    obtain ⟨⟨o, ho, hb, ht, hfr⟩, -⟩ := hkind hk
    exact ⟨o, ho, hb, ht, fun x hx hal => hfr x (by rw [hb]; exact hx)
      (Spec.Mpt.Dec.allocated_mono hmo0 hal)⟩
  · intro v
    by_cases hw : ∃ d0 d1 : BitVec 64, v = .rStruct [.val (.word d0), .val (.word d1)]
    swap
    · exact hoareG_false fun s _ h => hw h.1.1
    obtain ⟨d0, d1, rfl⟩ := hw
    unfold Spec.Mpt.Dec.wdM1K
    have hd : ∀ m : LocalsH, ((∃ d0' d1' : BitVec 64, ValueHOL.rStruct [.val (.word d0), .val (.word d1)] =
        .rStruct [.val (.word d0'), .val (.word d1')]) ∧
        m.lookup (nm "d") = some (.rStruct [.val (.word d0), .val (.word d1)]) ∧ LK DB T R 1 G m) →
        m.lookup (nm "d") = some (.rStruct [.val (.word d0), .val (.word d1)]) := fun m h => h.2.1
    refine hoareG_ite ?_ ?_
    · by_cases h0 : d0 = 0
      swap
      · exact hoareG_false fun s _ ⟨⟨hL, _⟩, hc⟩ =>
          h0 (by have := Spec.Mpt.Dec.eq_of_then (Spec.Mpt.Dec.ev_rfield_w (i := 0) (hd _ hL) rfl) hc
                 simpa using this)
      subst h0
      refine hoareG_pre (P := GI _ _ _) ?_ (fun s _ h => h.1)
      refine gp_seqJ (gp_assign ha.hH
        (L' := fun m => m.lookup (nm "d") = some (.rStruct [.val (.word 0), .val (.word d1)]) ∧
          LK DB T d1 1 G m) (fun s _ hL v hv => ?_)) ?_
      · rw [Spec.Mpt.Dec.ev_rfield_w (i := 1) (hd _ hL) rfl] at hv
        cases hv
        obtain ⟨l1, l2, l3, l4, l5⟩ := hL.2.2
        exact ⟨lk_keep (by decide) hL.2.1, lk_keep (by decide) l1, lk_keep (by decide) l2,
          by simp [setVarHOLFinite, FUPDATE], lk_keep (by decide) l4, lk_keep (by decide) l5⟩
      refine gpj_of_gp (gp_assign ha.hH (L' := LK DB T d1 (BitVec.ofNat 64 0) G)
        (fun s _ hL v hv => ?_)) (jg_of (fun m h => h) (fun h => absurd h hG) ?_
          (fun h => absurd h (by decide)))
      · rw [ev_cw] at hv
        cases hv
        obtain ⟨l1, l2, l3, l4, l5⟩ := hL.2
        exact ⟨lk_keep (by decide) l1, lk_keep (by decide) l2, lk_keep (by decide) l3,
          by simp [setVarHOLFinite, FUPDATE], lk_keep (by decide) l5⟩
      · intro Γ q M hE
        obtain ⟨hfit, hF⟩ := (hE.2 0 d1 rfl).1 rfl
        exact ⟨hF, fun _ _ => hfit, hE.1⟩
    · by_cases h0 : d0 = 0
      · subst h0
        exact hoareG_false fun s _ ⟨⟨hL, _⟩, hc⟩ =>
          Spec.Mpt.Dec.ne_of_else (Spec.Mpt.Dec.ev_rfield_w (i := 0) (hd _ hL) rfl) hc rfl
      refine hoareG_pre (P := GI _ _ _) ?_ (fun s _ h => h.1)
      -- `st d.1 + 0, top`
      have e0 : d1 + BitVec.ofNat 64 0 = d1 := by simp
      refine gp_seqJ (gp_stOut ha (A := d1 + BitVec.ofNat 64 0)
        (E' := fun Γ q M => Hooks.NdbR Γ M DB ∧ FrE (aB vs s0 Γ0 p0) d1 Γ q ∧ heapEnd ≤ d1.toNat ∧
          (rd M (d1 + 8) ≠ 1 → BrO (aB vs s0 Γ0 p0).p0 Γ (rd M (d1 + 16))) ∧ RecS Γ q M d1 ∧
          q.sp ≤ d1.toNat ∧ d1.toNat + 88 ≤ p0.sp ∧
          FrG (aB vs s0 Γ0 p0) Γ q M (d1.toNat + 88) p0.sp T ∧ rd M d1 = T)
        (fun s hL => Spec.ev_add2 (Spec.Mpt.Dec.ev_rfield_w (i := 1) (hd _ hL) rfl) (ev_cw s 0))
        (fun Γ q M hE => ?_) (fun s v hL hv => isW_ev ⟨T, hL.2.2.2.1⟩ v hv) (fun s Γ q V hL hE hv => ?_)) ?_
      · obtain ⟨⟨h8, h88, hc⟩, -⟩ := ((hE.2 d0 d1 rfl).2 h0)
        rw [e0]
        have := hc d1 ⟨h8, by omega, by omega⟩
        exact ⟨this.1, this.2.1⟩
      · obtain ⟨hFr, hHE, hk, hRS, hlo, hhi, hF⟩ := (hE.2 d0 d1 rfl).2 h0
        rw [e0] at *
        have hV : V = T := lv_val hL.2.2.2.1 hv
        subst hV
        have e8 : (d1 + 8).toNat = d1.toNat + 8 := Spec.Mpt.Dec.toNat_add_lt (k := 8) (by have := hFr.2.1; omega)
        have e16 : (d1 + 16).toNat = d1.toNat + 16 := Spec.Mpt.Dec.toNat_add_lt (k := 16) (by have := hFr.2.1; omega)
        have m8 : rd (Struct.upd s.memory d1 V) (d1 + 8) = rd s.memory (d1 + 8) :=
          Struct.rd_upd_ne (fun e => by have := congrArg BitVec.toNat e; rw [e8] at this; omega)
        have m16 : rd (Struct.upd s.memory d1 V) (d1 + 16) = rd s.memory (d1 + 16) :=
          Struct.rd_upd_ne (fun e => by have := congrArg BitVec.toNat e; rw [e16] at this; omega)
        have mk : ∀ j : Nat, 0 < j → j < 88 → rd (Struct.upd s.memory d1 V) (d1 + BitVec.ofNat 64 j) =
            rd s.memory (d1 + BitVec.ofNat 64 j) := fun j hj hj88 =>
          Struct.rd_upd_ne (fun e => by
            have := congrArg BitVec.toNat e
            rw [Spec.Mpt.Dec.toNat_add_lt (k := j) (by have := hFr.2.1; omega)] at this
            omega)
        refine ⟨ndbR_upd hE.1 (rcell_ne_out (fun hin => (hFr.2.2 d1 ⟨hFr.1, by omega, by omega⟩).1 hin)),
          hFr, hHE, by rw [m8, m16]; exact hk,
          recS_mem hRS m8 (mk 24 (by omega) (by omega)) (mk 48 (by omega) (by omega))
            (mk 56 (by omega) (by omega)) (mk 64 (by omega) (by omega)) (mk 72 (by omega) (by omega))
            (fun x hx1 hx2 hx3 => upd_ne (fun e => by rw [e] at hx1; omega)),
          hlo, hhi, frG_upd_out (by have := hFr.2.1; omega) (by omega) (Or.inr hHE) hF,
          Struct.rd_upd_self _ _ _⟩
      -- `top = d.1`
      refine gp_seqJ (gp_assign ha.hH (L' := fun m => m.lookup (nm "d") =
          some (.rStruct [.val (.word d0), .val (.word d1)]) ∧ LK DB d1 R 1 G m)
        (fun s _ hL v hv => ?_)) ?_
      · rw [Spec.Mpt.Dec.ev_rfield_w (i := 1) (hd _ hL) rfl] at hv
        cases hv
        obtain ⟨l1, l2, l3, l4, l5⟩ := hL.2.2
        exact ⟨lk_keep (by decide) hL.2.1, lk_keep (by decide) l1,
          by simp [setVarHOLFinite, FUPDATE], lk_keep (by decide) l3, lk_keep (by decide) l4,
          lk_keep (by decide) l5⟩
      -- the slot
      let Ld : LocalsH → Prop := fun m => m.lookup (nm "d") =
          some (.rStruct [.val (.word d0), .val (.word d1)]) ∧ LK DB d1 R 1 G m
      refine gp_seqJ (L := Ld) (hoareG_ite (hoareG_pre (gp_assign ha.hH (L' := Ld) (fun s _ hL v _ =>
          ⟨lk_keep (by decide) hL.1, lk_set hL.2 (by decide) (by decide) (by decide) (by decide)
            (by decide) v⟩)) (fun s _ h => h.1))
        (hoareG_pre (gp_assign ha.hH (L' := Ld) (fun s _ hL v _ =>
          ⟨lk_keep (by decide) hL.1, lk_set hL.2 (by decide) (by decide) (by decide) (by decide)
            (by decide) v⟩)) (fun s _ h => h.1))) ?_
      -- `mode = 2`
      refine gpj_of_gp (gp_assign ha.hH (L' := LK DB d1 R (BitVec.ofNat 64 2) G)
        (fun s _ hL v hv => ?_)) (jg_of (fun m h => h) (fun h => absurd h hG) ?_
          (fun h => absurd h (by decide)))
      · rw [ev_cw] at hv
        cases hv
        obtain ⟨l1, l2, l3, l4, l5⟩ := hL.2
        exact ⟨lk_keep (by decide) l1, lk_keep (by decide) l2, lk_keep (by decide) l3,
          by simp [setVarHOLFinite, FUPDATE], lk_keep (by decide) l5⟩
      · intro Γ q M ⟨hND, hFr, hHE, hk, hRS, hlo, hhi, hF, hT⟩
        refine ⟨frG_cons hlo hhi hFr hHE hk hRS (by rw [hT]; exact hF), fun _ h => absurd rfl h, hND⟩

end InitECandidate.Solver.MemSafe.Dn
#print axioms InitECandidate.Solver.MemSafe.Dn.wdM1_G
