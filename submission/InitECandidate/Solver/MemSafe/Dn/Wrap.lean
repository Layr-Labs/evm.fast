import InitECandidate.Solver.MemSafe.Dn.Kit4
import InitECandidate.Solver.Band.Dec

set_option autoImplicit false

/-!
# The scratch-window wrappers (D4)

* **`sumSpecA_dwnm_G`**: `_decode_witness_node_mpt(db, p, n, mark)` under `MpPre` (the body's
  `DecPre NdbW`, and `mark` the entry's `scratch_ptr`): `try nd = body(…) catch MptErr => e
  { scratch_release(mark); throw }; return nd`.
* **`sumSpecA_dwn_G`**: `_decode_witness_node(db, p, n)` under `DecPre NdbW`: `var mark =
  scratch_mark(); try … catch RlpErr …; scratch_release(mark); return nd`.

Every release is at the entry's `scratch_ptr` with no new scratch object (`ScrOld`), so it is a
sound window release (`winOK_of_scrOld`). Both return a `nodeU` word.
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

def mpSig : Sig := ⟨[.any, .any, .any, .any], [.fits Types.nodeU], [], true⟩

/-- `_decode_witness_node_mpt`'s precondition: the body's, and `mark` is `scratch_ptr`. -/
def MpPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ DB Q N Mk : BitVec 64, vs = [.val (.word DB), .val (.word Q), .val (.word N), .val (.word Mk)] ∧
    Spec.Mpt.Dec.DecPre Spec.Mpt.Leaves.NdbW [.val (.word DB), .val (.word Q), .val (.word N)] s ∧
    (∀ p, ptrsOf s = some p → Mk.toNat = p.sp) ∧ Hooks.NdbR Γ s.memory DB ∧
    Hooks.VInR Types.tVAL Γ Q N

theorem word_of_valid {s : State σ} {x : MlS} {W : BitVec 64} {v : ValueHOL 64}
    (hx : s.locals.lookup x = some (.val (.word W)))
    (hv : isValidValueHOLExact s.toExact .local x v = true) : ∃ ND : BitVec 64, v = .val (.word ND) := by
  have hsh := Spec.Mpt.Dec.shape_valid hx hv
  have e1 : shapeOfHOLExact (ValueHOL.val (.word W) : ValueHOL 64) = ShapeHOL.one := by
    simp [shapeOfHOLExact]
  rw [e1] at hsh
  exact val_of_shapeEq_one' hsh

/-- `DecPre` at the current state from the entry facts. -/
theorem decPre_of_EB {a : Act σ} {Γ0 : Gam} {p0 : Ptrs} {DB Q N : BitVec 64} {H : Nat} {Γ : Gam}
    {q : Ptrs} {s : State σ} (hh : Heap a Γ q s) (hE : EB Γ0 p0 DB Q N H Γ q s.memory) :
    Spec.Mpt.Dec.DecPre Spec.Mpt.Leaves.NdbW [.val (.word DB), .val (.word Q), .val (.word N)] s := by
  obtain ⟨-, rfl, hW, h1, h2, h3, -⟩ := hE
  exact ⟨DB, Q, N, rfl, ⟨q, hh.2.1, heap_ord hh⟩, H, q, hh.2.1, h1, h2, h3, hW⟩

/-- `BdPre` at the current state from the entry facts. -/
theorem bdPre_of_EB {a : Act σ} {Γ0 : Gam} {p0 : Ptrs} {DB Q N : BitVec 64} {H : Nat} {Γ : Gam}
    {q : Ptrs} {s : State σ} (hh : Heap a Γ q s) (hE : EB Γ0 p0 DB Q N H Γ q s.memory) :
    BdPre [.val (.word DB), .val (.word Q), .val (.word N)] s Γ :=
  ⟨decPre_of_EB hh hE, DB, Q, N, rfl, hE.2.2.2.2.2.2.1, hE.2.2.2.2.2.2.2⟩

theorem bdPre_congr {vs : List (ValueHOL 64)} {s t : State σ} {Γ : Gam} (hm : t.memory = s.memory)
    (hg : t.globals = s.globals) (h : BdPre vs s Γ) : BdPre vs t Γ := by
  obtain ⟨hd, DB, Q, N, hvs, hND, hV⟩ := h
  exact ⟨Band.decPre_congr hm hg hd, DB, Q, N, hvs, by rw [hm]; exact hND, hV⟩

/-- **`_decode_witness_node_mpt`'s summary** at `guestHooksR`. -/
theorem sumSpecA_dwnm_G :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "_decode_witness_node_mpt")
      mpSig MpPre (fun _ _ _ _ => False)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → True) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gp (Rx := fun _ _ _ _ _ _ => True) hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen Band.code_dwnm hl
  obtain ⟨DB, Q, N, Mk, rfl, hdec, hMk, hND, hVQ⟩ := hpre
  have hA := (hbind 0 (by decide) (by simp)).1
  have hB := (hbind 1 (by decide) (by simp)).1
  have hC := (hbind 2 (by decide) (by simp)).1
  have hD := (hbind 3 (by decide) (by simp)).1
  obtain ⟨DB', Q', N', hvs, -, H, pq, hpq, hQb, hQN, hHp, hW⟩ := hdec
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  rw [hh.2.1] at hpq
  cases hpq
  have hMk' : Mk.toNat = p0.sp := hMk p0 hh.2.1
  have hL0 : Layout Types.guestC p0 Γ0 := by
    obtain ⟨p1, hp1, -, hL, -⟩ := hh.1
    rw [hh.2.1] at hp1
    cases hp1
    exact hL
  let a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) mpSig []
    [.val (.word DB), .val (.word Q), .val (.word N), .val (.word Mk)] s0 Γ0 p0
  refine hoareG_conseq (P := GI a (LkL [nm "db", nm "p", nm "n", nm "mark"] [DB, Q, N, Mk])
      (EB Γ0 p0 DB Q N H))
    (Q := GP a (fun _ => False) (fun _ _ _ => True) (RvB a)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    refine ⟨fun i y w hy hw => ?_, Γ0, p0, ext_refl _, hh, scrOld_refl _, rfl, rfl, hW, hQb, hQN, hHp, hND, hVQ⟩
    rw [hloc]
    rcases i with _ | _ | _ | _ | i
    · simp only [List.getElem?_cons_zero, Option.some.injEq] at hy hw; subst hy hw; exact hA
    · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hy hw
      subst hy hw; exact hB
    · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hy hw
      subst hy hw; exact hC
    · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hy hw
      subst hy hw; exact hD
    · simp at hy
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', e1, e2, e3, e4⟩ := gp_final h r' hr hna
    exact ⟨Γ', p', e1, e2, e3, fun v hv => ⟨e4 v hv, trivial⟩⟩
  unfold Band.dwnmBody
  refine gp_dec ha.hH (L1 := LkL [nm "e", nm "db", nm "p", nm "n", nm "mark"]
    [BitVec.ofNat 64 0, DB, Q, N, Mk]) (L2 := fun _ => False) (fun s _ hL v hv => ?_) ?_
    (fun _ _ _ h => h.elim)
  · rw [ev_cw] at hv; cases hv; exact lkL_cons hL (by decide) _
  refine gp_dec ha.hH (L1 := LkL [nm "nd", nm "e", nm "db", nm "p", nm "n", nm "mark"]
    [BitVec.ofNat 64 0, BitVec.ofNat 64 0, DB, Q, N, Mk]) (L2 := fun _ => False)
    (fun s _ hL v hv => ?_) ?_ (fun _ _ _ h => h.elim)
  · rw [ev_cw] at hv; cases hv; exact lkL_cons hL (by decide) _
  refine gp_tryV ha sumSpecA_decode_witness_node_body_G (funSpec_true _) (by simp [bdSig])
    (fun _ => rfl) (by decide)
    (Lx := fun v m => (∃ ND : BitVec 64, v = .val (.word ND)) ∧ m.lookup (nm "nd") = some v)
    (Ex := fun v Γ _ _ => ∀ ND : BitVec 64, v = .val (.word ND) → Fits Γ Types.nodeU ND)
    (Lh := fun m => m.lookup (nm "mark") = some (.val (.word Mk))) (Eh := fun _ _ _ => True)
    (fun s Γ q _ hL hh' hE vs1 hvs => ?_)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨hQ.1, fun v hv =>
      ⟨fun ND hND => by subst hND; exact co.ret _ hv 0 _ ND rfl (by simp [flattenHOL]),
        fun hval => ⟨word_of_valid (hL 0 _ _ rfl rfl) hval, by simp [setVarHOLFinite, FUPDATE]⟩⟩,
      fun v hv => ⟨trivial, lk_keep (by decide) (hL 5 _ _ rfl rfl)⟩⟩) ?_ ?_
  · rw [evs_cons (ev_lw (hL 2 _ _ rfl rfl)) (evs_cons (ev_lw (hL 3 _ _ rfl rfl))
      (evs_cons (ev_lw (hL 4 _ _ rfl rfl)) evs_nil))] at hvs
    cases hvs
    exact ⟨(anyArgsG (by simp [bdSig]) rfl (s := s) (evs_cons (ev_lw (hL 2 _ _ rfl rfl))
      (evs_cons (ev_lw (hL 3 _ _ rfl rfl)) (evs_cons (ev_lw (hL 4 _ _ rfl rfl)) evs_nil)))).1,
      fun x hx => argCells_any (by simp [bdSig]) hx,
      fun callee => bdPre_congr rfl rfl (bdPre_of_EB hh' hE)⟩
  · unfold Band.relRaise
    refine gp_seq (gp_relS ha hX (E' := fun _ _ _ => True) (fun m h => h)
      (fun s Γ q hh' hsc _ => winOK_of_scrOld ha rfl hh' hsc hL0 hMk') (fun _ _ _ _ => trivial)) ?_
    exact gp_raiseG ha.hH
  · intro v
    by_cases hw : ∃ ND : BitVec 64, v = .val (.word ND)
    swap
    · exact hoareG_false fun s _ h => hw h.1.1
    obtain ⟨ND, rfl⟩ := hw
    refine gp_ret ha.hH (fun s Γ q _ hL _ _ hE v' hv' => ?_)
    rw [ev_lw hL.2] at hv'
    cases hv'
    exact retOK_fits1 (hE ND rfl)

/-- **`_decode_witness_node`'s summary** at `guestHooksR`. -/
theorem sumSpecA_dwn_G :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "_decode_witness_node")
      bdSig BdPre (fun _ _ _ _ => False)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → True) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gp (Rx := fun _ _ _ _ _ _ => True) hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, A, B, C, rfl, -, -, -, hA, hB, hC'⟩ :=
    Spec.lookupCode_three Band.code_dwn (by decide) (by decide) (by decide) hl
  obtain ⟨⟨DB, Q, N, hvs, -, H, pq, hpq, hQb, hQN, hHp, hW⟩, DB', Q', N', hvs', hND, hVQ⟩ := hpre
  rw [hvs] at hvs'
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs hvs'
  obtain ⟨rfl, rfl, rfl⟩ := hvs'
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  rw [hh.2.1] at hpq
  cases hpq
  have hL0 : Layout Types.guestC p0 Γ0 := by
    obtain ⟨p1, hp1, -, hL, -⟩ := hh.1
    rw [hh.2.1] at hp1
    cases hp1
    exact hL
  refine hoareG_conseq (P := GI (aB [.val (.word DB), .val (.word Q), .val (.word N)] s0 Γ0 p0)
      (LkL [nm "db", nm "p", nm "n"] [DB, Q, N]) (EB Γ0 p0 DB Q N H))
    (Q := GP (aB [.val (.word DB), .val (.word Q), .val (.word N)] s0 Γ0 p0) (fun _ => False)
      (fun _ _ _ => True) (RvB (aB [.val (.word DB), .val (.word Q), .val (.word N)] s0 Γ0 p0)))
    ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    refine ⟨fun i y w hy hw => ?_, Γ0, p0, ext_refl _, hh, scrOld_refl _, rfl, rfl, hW, hQb, hQN, hHp,
      hND, hVQ⟩
    rw [hloc]
    rcases i with _ | _ | _ | i
    · simp only [List.getElem?_cons_zero, Option.some.injEq] at hy hw; subst hy hw; exact hA
    · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hy hw
      subst hy hw; exact hB
    · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hy hw
      subst hy hw; exact hC'
    · simp at hy
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', e1, e2, e3, e4⟩ := gp_final h r' hr hna
    exact ⟨Γ', p', e1, e2, e3, fun v hv => ⟨e4 v hv, trivial⟩⟩
  unfold Band.dwnBody
  refine gp_markS ha hX (L1 := fun w m => LkL [nm "mark", nm "db", nm "p", nm "n"] [w, DB, Q, N] m)
    (E1 := fun w Γ q M => w.toNat = q.sp ∧ EB Γ0 p0 DB Q N H Γ q M) (L2 := fun _ => False)
    (fun s st w hL => lkL_cons (s := { st with locals := s.locals }) hL (by decide) w)
    (fun Γ q M w hE hw => ⟨hw, hE⟩) ?_ (fun _ _ _ h => h.elim)
  intro Mk
  by_cases hMk : Mk.toNat = p0.sp
  swap
  · exact hoareG_false fun s _ h => by
      obtain ⟨_, Γ, q, _, _, _, hw, -, hq, -⟩ := h
      exact hMk (by rw [hw, hq])
  refine gp_dec ha.hH (L1 := LkL [nm "e", nm "mark", nm "db", nm "p", nm "n"]
    [BitVec.ofNat 64 0, Mk, DB, Q, N]) (L2 := fun _ => False) (fun s _ hL v hv => ?_) ?_
    (fun _ _ _ h => h.elim)
  · rw [ev_cw] at hv; cases hv; exact lkL_cons hL (by decide) _
  refine gp_dec ha.hH (L1 := LkL [nm "nd", nm "e", nm "mark", nm "db", nm "p", nm "n"]
    [BitVec.ofNat 64 0, BitVec.ofNat 64 0, Mk, DB, Q, N]) (L2 := fun _ => False)
    (fun s _ hL v hv => ?_) ?_ (fun _ _ _ h => h.elim)
  · rw [ev_cw] at hv; cases hv; exact lkL_cons hL (by decide) _
  refine gp_tryV ha sumSpecA_dwnm_G (funSpec_true _) (by simp [mpSig]) (fun _ => rfl) (by decide)
    (Lx := fun v m => (∃ ND : BitVec 64, v = .val (.word ND)) ∧ m.lookup (nm "nd") = some v ∧
      m.lookup (nm "mark") = some (.val (.word Mk)))
    (Ex := fun v Γ _ _ => ∀ ND : BitVec 64, v = .val (.word ND) → Fits Γ Types.nodeU ND)
    (Lh := fun m => m.lookup (nm "mark") = some (.val (.word Mk))) (Eh := fun _ _ _ => True)
    (fun s Γ q _ hL hh' hE vs1 hvs => ?_)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨hQ.1, fun v hv =>
      ⟨fun ND hND => by subst hND; exact co.ret _ hv 0 _ ND rfl (by simp [flattenHOL]),
        fun hval => ⟨word_of_valid (hL 0 _ _ rfl rfl) hval, by simp [setVarHOLFinite, FUPDATE],
          lk_keep (by decide) (hL 2 _ _ rfl rfl)⟩⟩,
      fun v hv => ⟨trivial, lk_keep (by decide) (hL 2 _ _ rfl rfl)⟩⟩) ?_ ?_
  · have hvs' : evs s [lv (nm "db"), lv (nm "p"), lv (nm "n"), lv (nm "mark")] =
        some [.val (.word DB), .val (.word Q), .val (.word N), .val (.word Mk)] :=
      evs_cons (ev_lw (hL 3 _ _ rfl rfl)) (evs_cons (ev_lw (hL 4 _ _ rfl rfl))
        (evs_cons (ev_lw (hL 5 _ _ rfl rfl)) (evs_cons (ev_lw (hL 2 _ _ rfl rfl)) evs_nil)))
    rw [hvs'] at hvs
    cases hvs
    obtain ⟨hw, hEB⟩ := hE
    exact ⟨(anyArgsG (by simp [mpSig]) rfl hvs').1, fun x hx => argCells_any (by simp [mpSig]) hx,
      fun callee => ⟨DB, Q, N, Mk, rfl, Band.decPre_congr rfl rfl (decPre_of_EB hh' hEB),
        fun p hp => by
          have : ptrsOf s = some p := hp
          rw [hh'.2.1] at this
          cases this
          exact hw, hEB.2.2.2.2.2.2.1, hEB.2.2.2.2.2.2.2⟩⟩
  · unfold Band.relRaise
    refine gp_seq (gp_relS ha hX (E' := fun _ _ _ => True) (fun m h => h)
      (fun s Γ q hh' hsc _ => winOK_of_scrOld ha rfl hh' hsc hL0 hMk) (fun _ _ _ _ => trivial)) ?_
    exact gp_raiseG ha.hH
  · intro v
    by_cases hw : ∃ ND : BitVec 64, v = .val (.word ND)
    swap
    · exact hoareG_false fun s _ h => hw h.1.1
    obtain ⟨ND, rfl⟩ := hw
    refine gp_seq (gp_relS ha hX (E' := fun Γ _ _ => ∀ ND' : BitVec 64,
        ValueHOL.val (.word ND) = .val (.word ND') → Fits Γ Types.nodeU ND') (fun m h => h.2.2)
      (fun s Γ q hh' hsc _ => winOK_of_scrOld ha rfl hh' hsc hL0 hMk) (fun _ _ _ h => h)) ?_
    refine gp_ret ha.hH (fun s Γ q _ hL _ _ hE v' hv' => ?_)
    rw [ev_lw hL.2.1] at hv'
    cases hv'
    exact retOK_fits1 (hE ND rfl)

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.sumSpecA_dwnm_G
#print axioms InitECandidate.Solver.MemSafe.Dn.sumSpecA_dwn_G
