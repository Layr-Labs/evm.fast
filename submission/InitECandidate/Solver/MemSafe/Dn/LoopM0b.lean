import InitECandidate.Solver.MemSafe.Dn.LoopM0a

set_option autoImplicit false

/-!
# The decoder loop, mode 0: the pop and the branch tail

* `pop_tail`: `top = ld (top + 0); result = x` ends in the loop invariant (the parent record's
  chain is the tail of the head's);
* `wdBrFin_G`: the finished branch's cache cells, then the pop.
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

/-- **The pop**: `top = ld (top + 0); result = lv x`. -/
theorem pop_tail {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
    {DB T R Mo G X : BitVec 64} {x : MlS} (hT : T ≠ 0) (hMo : Mo ≠ 1 ∧ Mo ≠ 2) (hx : x ≠ nm "top")
    (hL : ∀ m, L m → LK DB T R Mo G m ∧ m.lookup x = some (.val (.word X)))
    (hE : ∀ Γ q M, E Γ q M → FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Fits Γ Types.nodeU X ∧
      Hooks.NdbR Γ M DB) :
    HoareG σ guestCtx (GI (aB vs s0 Γ0 p0) L E)
      (.seq (.assign .local (nm "top") (.load .one (.op .add [lv (nm "top"), cw 0])))
        (.assign .local (nm "result") (lv x)))
      (GPJ (aB vs s0 Γ0 p0) (JG (aB vs s0 Γ0 p0)) (RvB (aB vs s0 Γ0 p0))) := by
  refine hoareG_seq (R := fun r t => r = none ∧ ∃ P : BitVec 64, t.locals.lookup (nm "top") =
      some (.val (.word P)) ∧ t.locals.lookup (nm "db") = some (.val (.word DB)) ∧
      t.locals.lookup (nm "result") = some (.val (.word R)) ∧
      t.locals.lookup (nm "mode") = some (.val (.word Mo)) ∧
      t.locals.lookup (nm "go") = some (.val (.word G)) ∧ t.locals.lookup x = some (.val (.word X)) ∧
      ∃ (Γ : Gam) (q : Ptrs), Ext (aB vs s0 Γ0 p0).Γ0 Γ ∧ Heap (aB vs s0 Γ0 p0) Γ q t ∧
        ScrOld (aB vs s0 Γ0 p0).Γ0 Γ ∧ FrG (aB vs s0 Γ0 p0) Γ q t.memory q.sp p0.sp P ∧
        Fits Γ Types.nodeU X ∧ Hooks.NdbR Γ t.memory DB)
    (hoareG_assign fun s _ ⟨hl, Γ, q, he, hh, hsc, hEs⟩ v hv _ => ?_)
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · obtain ⟨⟨l1, l2, l3, l4, l5⟩, lx⟩ := hL _ hl
    have hv' := Spec.Mpt.Dec.ev_ld l2 0 v hv
    subst hv'
    obtain ⟨hF, hfit, hND⟩ := hE Γ q s.memory hEs
    obtain ⟨h1, h2, -, -, -, -, h5⟩ := frG_unfold hF hT
    have e0 : T + BitVec.ofNat 64 0 = T := by simp
    refine ⟨rfl, rd s.memory (T + BitVec.ofNat 64 0), by simp [setVarHOLFinite, FUPDATE],
      lk_keep (by decide) l1, lk_keep (by decide) l3, lk_keep (by decide) l4, lk_keep (by decide) l5,
      lk_keep hx lx, Γ, q, he, heap_congr (s := s) ha.hH rfl rfl rfl rfl hh, hsc, ?_, hfit, hND⟩
    rw [e0]
    exact frG_mono_lo (by omega) h5
  · refine hoareG_assign fun t _ ⟨_, P, hP, hdb, hR, hM, hG, hX, Γ, q, he, hh, hsc, hF, hfit, hND⟩ v hv _ => ?_
    rw [ev_lv, hX] at hv
    cases hv
    refine ⟨fun _ => ⟨P, X, Mo, G, lk_keep (by decide) hP, by simp [setVarHOLFinite, FUPDATE],
      lk_keep (by decide) hM, lk_keep (by decide) hG, fun _ => hMo, Γ, q, he,
      heap_congr (s := t) ha.hH rfl rfl rfl rfl hh, hsc, hF, fun _ _ => hfit, ⟨DB, lk_keep (by decide) hdb, hND⟩, fun h => absurd h hMo.1⟩, fun r' h => by cases h⟩


/-- A branch object's slot `j < 22`, with its kind from `nbranchTy`. -/
theorem brO_slot {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} {Γ : Gam}
    {q : Ptrs} {s : State σ} (hh : Heap (aB vs s0 Γ0 p0) Γ q s) {BR : BitVec 64} (hB : BrO p0 Γ BR)
    {j : Nat} (hj : j < 22) :
    ∃ o ∈ Γ, o.base = BR ∧ o.ty ∈ Node.nodeTys ∧ o.HasSlot j ∧
      ((aB vs s0 Γ0 p0).Cb.ty o.ty).slot j = Types.nbranchTy.slot j := by
  obtain ⟨o, ho, hb, ht, -⟩ := hB
  obtain ⟨p1, -, -, hL, -⟩ := hh.1
  have hsz : (Types.guestC.ty o.ty).minSz ≤ o.size := (hL.1 o ho).2.2.2.1
  rw [ht, Types.ty_NBRANCH] at hsz
  refine ⟨o, ho, hb, by rw [ht]; decide, ?_, ?_⟩
  · unfold Obj.HasSlot; simp only [Types.nbranchTy] at hsz; omega
  · show (Types.guestC.ty o.ty).slot j = _
    rw [ht, Types.ty_NBRANCH]

/-- **A store into a `scalar` slot of the branch object** `br`, keeping the record chain. -/
theorem gp_stBrS {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) (hsp0 : p0.sp ≤ scratchEnd)
    {L : LocalsH → Prop} {P : Gam → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {DB T BR : BitVec 64} (j : Nat) (hj : j = 1 ∨ j = 2 ∨ j = 3) {e : ExpHOL 64}
    (hx : ∀ m, L m → m.lookup (nm "br") = some (.val (.word BR)))
    (hv : ∀ (s : State σ) v, L s.locals → ev s e = some v → ∃ V, v = .val (.word V))
    (hP : ∀ Γ, P Γ → BrO p0 Γ BR) :
    HoareG σ guestCtx (GI (aB vs s0 Γ0 p0) L
        (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧ P Γ))
      (.store (.op .add [lv (nm "br"), cw (8 * j)]) e)
      (GP (aB vs s0 Γ0 p0) L (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧
        Hooks.NdbR Γ M DB ∧ P Γ) Rv) := by
  have hse : scratchEnd < 2 ^ 64 := by decide
  have hj22 : j < 22 := by omega
  refine gp_stSCH ha rfl (B := BR) (j := j) hx (by simp only [nullMax]; omega)
    (fun s Γ q hh hE => ?_) hv (fun s Γ q V _ hh hE _ hn _ _ => ?_)
  · obtain ⟨o, ho, hb, -, hk, hsl⟩ := brO_slot hh (hP _ hE.2.2) hj22
    refine Or.inr ⟨o, ho, hb, hk, ?_⟩
    rw [hsl]
    rcases hj with rfl | rfl | rfl <;> rfl
  · obtain ⟨o, ho, hb, ht, hk, -⟩ := brO_slot hh (hP _ hE.2.2) hj22
    obtain ⟨h1, h2⟩ := node_below rfl hh ho ht
    have hord := heap_ord hh
    obtain ⟨-, -, -, -, o5, -⟩ := hord
    unfold Obj.HasSlot at hk
    subst hb
    have e : (o.base + BitVec.ofNat 64 (8 * j)).toNat = o.base.toNat + 8 * j := Spec.Mpt.Dec.toNat_add_lt (by omega)
    refine ⟨frG_upd_out (by omega) ?_ (Or.inl ⟨o, ho, ?_, ?_⟩) hE.1, ndbR_upd hE.2.1 hn, hE.2.2⟩
    · rw [e]; omega
    · rw [e]; unfold Obj.lo; omega
    · rw [e]; unfold Obj.hi; omega

/-- Locals with `br` bound. -/
def LBr0 (DB T R Mo G BR : BitVec 64) (m : LocalsH) : Prop :=
  LK DB T R Mo G m ∧ m.lookup (nm "br") = some (.val (.word BR))

theorem ld_word {s : State σ} {x : MlS} {w : BitVec 64} (hx : s.locals.lookup x = some (.val (.word w)))
    (k : Nat) : ∀ v, ev s (.load .one (.op .add [lv x, cw k])) = some v → ∃ V, v = .val (.word V) :=
  fun v hv => ⟨_, Spec.Mpt.Dec.ev_ld hx k v hv⟩

/-- **The tail of a finished branch** (`wdBrFin`): the node's slice cells, then the pop. -/
theorem wdBrFin_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) (hsp0 : p0.sp ≤ scratchEnd)
    {DB T R Mo G BR : BitVec 64} (hT : T ≠ 0) (hMo : Mo ≠ 1 ∧ Mo ≠ 2) :
    HoareG σ guestCtx (GI (aB vs s0 Γ0 p0) (LBr0 DB T R Mo G BR)
        (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧ BrO p0 Γ BR))
      Spec.Mpt.Dec.wdBrFin (GPJ (aB vs s0 Γ0 p0) (JG (aB vs s0 Γ0 p0)) (RvB (aB vs s0 Γ0 p0))) := by
  unfold Spec.Mpt.Dec.wdBrFin
  refine gp_seqJ (gp_stBrS ha hsp0 (DB := DB) 1 (by decide) (fun m h => h.2)
    (fun s v hL hv => ld_word hL.1.2.1 48 v hv) (fun _ h => h)) ?_
  refine gp_seqJ (gp_stBrS ha hsp0 (DB := DB) 2 (by decide) (fun m h => h.2)
    (fun s v hL hv => ld_word hL.1.2.1 56 v hv) (fun _ h => h)) ?_
  refine pop_tail ha hT hMo (x := nm "br") (X := BR) (by decide) (fun m h => ⟨h.1, h.2⟩)
    (fun Γ q M h => ⟨h.1, ?_, h.2.1⟩)
  obtain ⟨o, ho, hb, ht, -⟩ := h.2.2
  exact Or.inr ⟨o, ho, hb, by rw [ht]; decide⟩

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.pop_tail
#print axioms InitECandidate.Solver.MemSafe.Dn.wdBrFin_G
