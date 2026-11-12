import InitECandidate.Solver.MemSafe.Frames.Lib

/-!
# `frame_exception`: code, exact effect, summary

```
fun 1 frame_exception(1 err) {
  refill_frame_state_gas();
  if err != E_REVERT { frame_halt(err); st ev + EV_OUTPUT, evm_empty; st ev + EV_OUTPUT_N, 0; }
  else { st ev + EV_ERROR, err; }
  st cur_cont + CK_DONE, 1;
  return 0; }
```

* `exc_spec`: the exact final memory (`excMem` then `CK_DONE := 1`).
* **`exc_sumSpec`**: the `SumSpec` the `Bundle` asks for (`PreInv`, `PW = True`, `QExc`): `G` and
  `Chain` are kept (same typing, same allocator state) and `Φ` drops by the active bit.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Code -/

def excBody : ProgHOL 64 :=
  .seq (callD (nm "refill_frame_state_gas") [])
  (.seq (.ite (.cmp .notEqual (lv (nm "err")) (cw 1))
      (.seq (callD (nm "frame_halt") [lv (nm "err")])
        (.seq (stG "ev" 120 (gv (nm "evm_empty"))) (stG "ev" 128 (cw 0))))
      (stG "ev" 160 (lv (nm "err"))))
  (.seq (stG "cur_cont" 32 (cw 1))
    (.return (cw 0))))

theorem entry_exc : fnEntry Guest.Software.guestFn_frame_exception =
    (nm "frame_exception", [(nm "err", .one)], excBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_exc : guestCode (nm "frame_exception") = some ([(nm "err", .one)], excBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 579) (by decide)) ⟨_, rfl⟩
    entry_exc

/-! ## Helpers -/

theorem good_of_abn {r : PanSemResultExact 64} (h : MemSafe.Abn r) : Good (some r) := by
  rcases h with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]

theorem hoareG_ex {α : Type} {P : α → State σ → Prop} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (h : ∀ a, HoareG σ X (P a) c Q) :
    HoareG σ X (fun u => ∃ a, P a u) c Q := fun u hu ⟨a, ha⟩ => h a u hu ha

theorem funSpec_of_hoareG' {f : MlS} {Pre : List (ValueHOL 64) → State σ → Prop}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → Pre vs s0 →
        HoareG σ X (fun u => u = s0) body (fun r t => ∀ rr, r = some rr → R vs s0 rr t)) :
    FunSpec σ X f (fun vs s r t => Good (some r) → Pre vs s → R vs s r t) := by
  intro vs body callee rs hl s hs hloc r hr hg hp
  have := h vs body callee rs hl s hs hloc hp s hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  exact this r rfl

theorem rd_upd (m : Mem) (a w b : BitVec 64) :
    rd (upd m a w) b = if b = a then w else rd m b := by
  unfold rd upd
  by_cases h : b = a <;> simp [h]

theorem gword_eqG {u s : State σ} (h : u.globals = s.globals) (g : MlS) : gword u g = gword s g :=
  gword_congr h g

/-! ## The exact effect -/

/-- The memory after the body up to the `CK_DONE` store. -/
def excMem (m : Mem) (e err S E : BitVec 64) : Mem :=
  if err ≠ 1 then
    upd (upd (haltMem (refillMem m e S) e err) (e + BitVec.ofNat 64 120) E) (e + BitVec.ofNat 64 128) 0
  else upd (refillMem m e S) (e + BitVec.ofNat 64 160) err

theorem exc_spec (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "frame_exception") (fun vs s r t => Good (some r) →
      (∃ x, gword s (nm "evm_empty") = some x) →
      ∃ e c err E S, vs = [.val (.word err)] ∧ gword s nmEv = some e ∧ gword s nmCC = some c ∧
        gword s (nm "evm_empty") = some E ∧ r = .returned (.val (.word 0)) ∧
        t.globals = s.globals ∧ t.memory = upd (excMem s.memory e err S E) (c + BitVec.ofNat 64 32) 1) := by
  refine funSpec_of_hoareG' fun vs body callee rs hl s0 _ hloc ⟨E, hE⟩ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hsh, hA⟩ := lookupCode_one code_exc hl
  obtain ⟨err, rfl⟩ := val_of_shapeEq_one hsh
  have herr : s0.locals.lookup (nm "err") = some (.val (.word err)) := by rw [hloc]; exact hA
  -- refill
  refine hoareG_seq (R := fun r u => r = none ∧ ∃ eS : BitVec 64 × BitVec 64,
      gword s0 nmEv = some eS.1 ∧ u.locals = s0.locals ∧ u.globals = s0.globals ∧
        u.memory = refillMem s0.memory eS.1 eS.2) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_callD (refill_spec hC) ?_ ?_
    · intro s _ hs vs _ callee v st hR _
      subst hs
      obtain ⟨e, S, he, -, hg, hm⟩ := hR (by simp [Good])
      exact ⟨rfl, (e, S), he, rfl, hg, hm⟩
    · intro s _ hs vs _ callee r st hR _ habn
      obtain ⟨e, S, -, hr, -⟩ := hR (good_of_abn habn)
      subst hr
      rcases habn with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h
  refine hoareG_pre (hoareG_ex fun (eS : BitVec 64 × BitVec 64) =>
    hoareG_pure (P0 := gword s0 nmEv = some eS.1) (P := fun u => u.locals = s0.locals ∧
      u.globals = s0.globals ∧ u.memory = refillMem s0.memory eS.1 eS.2) fun he => ?_)
    (fun u _ ⟨_, eS, h1, h2⟩ => ⟨eS, h1, h2⟩)
  obtain ⟨e, S⟩ := eS
  dsimp only at he ⊢
  -- the branch
  refine hoareG_seq (R := fun r u => r = none ∧ u.locals = s0.locals ∧
      u.globals = s0.globals ∧ u.memory = excMem s0.memory e err S E)
    ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_ite ?_ ?_
    · -- `err ≠ 1`
      have key : ∀ u : State σ, (u.locals = s0.locals ∧
          u.globals = s0.globals ∧ u.memory = refillMem s0.memory e S) ∧
          (∃ w, ev u (.cmp .notEqual (lv (nm "err")) (cw 1)) = some (.val (.word w)) ∧ w ≠ 0) →
          err ≠ 1 := by
        rintro u ⟨⟨hl, -⟩, w, hw, hw0⟩
        obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
        have : ev u (lv (nm "err")) = some (.val (.word err)) := by
          show u.locals.lookup _ = _; rw [hl]; exact herr
        rw [this] at hx; cases hx
        rw [ev_cw] at hy; cases hy
        simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hxy
      refine hoareG_pre (hoareG_pure (P0 := err ≠ 1) (P := fun u =>
          u.locals = s0.locals ∧ u.globals = s0.globals ∧ u.memory = refillMem s0.memory e S)
          fun hne => ?_) (fun u _ h => ⟨key u h, h.1⟩)
      refine hoareG_seq (R := fun r u => r = none ∧ u.locals = s0.locals ∧
          u.globals = s0.globals ∧ u.memory = haltMem (refillMem s0.memory e S) e err)
        ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
      · refine hoareG_callD (halt_spec hC) ?_ ?_
        · intro s _ ⟨hl, hg, hm⟩ vs hvs callee v st hR _
          obtain ⟨e', err', hvs', he', -, hg', hm'⟩ := hR (by simp [Good])
          have hev : evs s [lv (nm "err")] = some [.val (.word err)] := by
            refine evs_cons ?_ evs_nil
            show s.locals.lookup _ = _; rw [hl]; exact herr
          rw [hev] at hvs
          cases hvs
          simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs'
          subst hvs'
          have : e' = e := by
            have h1 : gword (callEntryStateHOLFinite s callee) nmEv = gword s0 nmEv :=
              gword_eqG hg nmEv
            rw [he', he] at h1
            exact (Option.some.inj h1)
          subst this
          refine ⟨rfl, hl, hg'.trans hg, ?_⟩
          rw [hm']
          show haltMem s.memory e' err = _
          rw [hm]
        · intro s _ _ vs _ callee r st hR _ habn
          obtain ⟨e', err', -, -, hr, -⟩ := hR (good_of_abn habn)
          subst hr
          rcases habn with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h
      refine hoareG_seq (R := fun r u => r = none ∧ u.locals = s0.locals ∧
          u.globals = s0.globals ∧ u.memory = upd (haltMem (refillMem s0.memory e S) e err)
            (e + BitVec.ofNat 64 120) E)
        ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
      · refine hoareG_stG fun u _ ⟨_, hl, hg, hm⟩ G v hG hv => ?_
        rw [gword_eqG hg, he] at hG
        rw [Option.some.injEq] at hG
        subst hG
        have : ev u (gv (nm "evm_empty")) = some (.val (.word E)) := by
          show u.globals.lookup _ = _; rw [hg]; exact gword_some hE
        rw [this] at hv
        cases hv
        exact ⟨_, rfl, fun _ => ⟨rfl, hl, hg, by rw [hm]⟩⟩
      · refine hoareG_stG fun u _ ⟨_, hl, hg, hm⟩ G v hG hv => ?_
        rw [gword_eqG hg, he] at hG
        rw [Option.some.injEq] at hG
        subst hG
        rw [ev_cw] at hv
        cases hv
        refine ⟨_, rfl, fun _ => ⟨rfl, hl, hg, ?_⟩⟩
        show upd u.memory _ _ = _
        rw [hm, excMem, if_pos hne]
        rfl
    · -- `err = 1`
      refine hoareG_stG fun u _ ⟨⟨hl, hg, hm⟩, hw⟩ G v hG hv => ?_
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hw
      have hlv : ev u (lv (nm "err")) = some (.val (.word err)) := by
        show u.locals.lookup _ = _; rw [hl]; exact herr
      rw [hlv] at hx; cases hx
      rw [ev_cw] at hy; cases hy
      have h1 : err = 1 := by simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hxy
      rw [gword_eqG hg, he] at hG
      rw [Option.some.injEq] at hG
      subst hG
      rw [hlv] at hv
      cases hv
      refine ⟨_, rfl, fun _ => ⟨rfl, hl, hg, ?_⟩⟩
      show upd u.memory _ _ = _
      rw [hm, excMem, if_neg (by simpa using h1)]
  refine hoareG_seq (R := fun r u => r = none ∧ ∃ c, gword s0 nmCC = some c ∧
      u.locals = s0.locals ∧ u.globals = s0.globals ∧
      u.memory = upd (excMem s0.memory e err S E) (c + BitVec.ofNat 64 32) 1)
    ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_stG fun u _ ⟨_, hl, hg, hm⟩ G v hG hv => ?_
    rw [ev_cw] at hv
    cases hv
    have hG' : gword s0 nmCC = some G := by rw [← gword_eqG hg]; exact hG
    refine ⟨_, rfl, fun _ => ⟨rfl, G, hG', hl, hg, ?_⟩⟩
    show upd u.memory _ _ = _
    rw [hm]
    rfl
  refine hoareG_return fun u _ ⟨_, c, hc, hl, hg, hm⟩ v hv => ?_
  rw [ev_cw] at hv
  cases hv
  intro rr hrr
  cases hrr
  exact ⟨e, c, err, E, S, rfl, he, hc, hE, rfl, hg, hm⟩

/-! ## Safe EV / CK cells -/

theorem act_eq {s : State σ} {e c : BitVec 64} (he : gword s nmEv = some e)
    (hc : gword s nmCC = some c) :
    act s = if fld s.memory c 32 = 0 ∧ fld s.memory e 104 ≠ 0 then 1 else 0 := by
  have hR : Ready s ↔ (fld s.memory c 32 = 0 ∧ fld s.memory e 104 ≠ 0) := by
    constructor
    · rintro ⟨⟨c', hc', h1⟩, ⟨e', he', h2⟩⟩
      rw [hc] at hc'; rw [he] at he'
      cases hc'; cases he'
      exact ⟨h1, h2⟩
    · rintro ⟨h1, h2⟩
      exact ⟨⟨c, hc, h1⟩, ⟨e, he, h2⟩⟩
  unfold act
  by_cases h : Ready s
  · rw [if_pos h, if_pos (hR.mp h)]
  · rw [if_neg h, if_neg (fun h' => h (hR.mpr h'))]

theorem wt_eq (m : Mem) (e c : BitVec 64) :
    wt m (e, c) = (fld m e 64).toNat + (fld m e 192).toNat + 1 +
      (if fld m c 32 = 0 ∧ fld m e 104 ≠ 0 then 1 else 0) := rfl

theorem offNe_exc (b : BitVec 64) {i j : Nat} (hi : i < 2 ^ 64) (hj : j < 2 ^ 64) (h : i ≠ j) :
    b + BitVec.ofNat 64 i ≠ b + BitVec.ofNat 64 j := by
  intro e
  have := congrArg BitVec.toNat e
  rw [BitVec.toNat_add, BitVec.toNat_add, BitVec.toNat_ofNat, BitVec.toNat_ofNat,
    Nat.mod_eq_of_lt hi, Nat.mod_eq_of_lt hj] at this
  have := b.isLt
  omega

/-- Eon: `EV_OUTPUT_N` (byte 128) stays below `2^32` through `frame_exception` (`0` or kept). -/
theorem excMem_rd128 (m : Mem) (e c err S E : BitVec 64)
    (hne : e + BitVec.ofNat 64 128 ≠ c + BitVec.ofNat 64 32)
    (h : (rd m (e + BitVec.ofNat 64 128)).toNat < 2 ^ 32) :
    (rd (upd (excMem m e err S E) (c + BitVec.ofNat 64 32) 1) (e + BitVec.ofNat 64 128)).toNat <
      2 ^ 32 := by
  rw [rd_upd, if_neg hne]
  unfold excMem
  split
  · rw [rd_upd, if_pos rfl]; simp
  · rw [rd_upd, if_neg (offNe_exc e (by decide) (by decide) (by decide)).symm]
    unfold refillMem
    rw [rd_upd, if_neg (offNe_exc e (by decide) (by decide) (by decide)), rd_upd,
      if_neg (offNe_exc e (by decide) (by decide) (by decide)), rd_upd,
      if_neg (offNe_exc e (by decide) (by decide) (by decide))]
    exact h

/-! ## The summary -/

/-- The cells `frame_exception` writes. -/
def excCells (e c a : BitVec 64) : Prop :=
  a = e + BitVec.ofNat 64 64 ∨ a = e + BitVec.ofNat 64 72 ∨ a = e + BitVec.ofNat 64 192 ∨
    a = e + BitVec.ofNat 64 184 ∨ a = e + BitVec.ofNat 64 160 ∨ a = e + BitVec.ofNat 64 120 ∨
    a = e + BitVec.ofNat 64 128 ∨ a = c + BitVec.ofNat 64 32

theorem excMem_mod (m : Mem) (e c err S E : BitVec 64) :
    ModifiesOnly (excCells e c) m (upd (excMem m e err S E) (c + BitVec.ofNat 64 32) 1) := by
  unfold excMem haltMem refillMem
  split <;>
  repeat (first
    | exact modifiesOnly_refl _ _
    | refine modifiesOnly_upd ?_ (by unfold excCells; simp) _)

/-- A cell of a `Γ` object other than the frame's EV record, and other than `CK_DONE` of its
continuation, is not written by `frame_exception`. -/
theorem not_excCells {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {oe oc o : Obj} (hoe : oe ∈ Γ) (hoc : oc ∈ Γ) (ho : o ∈ Γ) (hse : 280 ≤ oe.size)
    (hsc : 104 ≤ oc.size) {k : Nat} (hk : k < o.size) (h1 : o.base ≠ oe.base)
    (h2 : o.base ≠ oc.base ∨ k ≠ 32) : ¬ excCells oe.base oc.base (o.base + BitVec.ofNat 64 k) := by
  have hev : ∀ j, j < 280 → o.base + BitVec.ofNat 64 k ≠ oe.base + BitVec.ofNat 64 j :=
    fun j hj => cell_ne hord hL ho hoe hk (by omega) (Or.inl h1)
  have hck : o.base + BitVec.ofNat 64 k ≠ oc.base + BitVec.ofNat 64 32 :=
    cell_ne hord hL ho hoc hk (by omega) (h2.imp id fun h => h)
  unfold excCells
  rintro (h | h | h | h | h | h | h | h)
  · exact hev 64 (by omega) h
  · exact hev 72 (by omega) h
  · exact hev 192 (by omega) h
  · exact hev 184 (by omega) h
  · exact hev 160 (by omega) h
  · exact hev 120 (by omega) h
  · exact hev 128 (by omega) h
  · exact hck h

/-- **`frame_exception`'s summary** (the `Bundle` entry `excSum`). -/
theorem exc_sumSpec {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hC : X.code.lookup = guestCode)
    (hF : FrameCfg C H tEV tCK) (M : Nat) :
    SumSpec σ X C H (nm "frame_exception") (sg1 []) (PreInv C tEV tCK M) (fun _ _ _ _ => True)
      (QExc C tEV tCK) := by
  refine FunSpec.mono (FunSpec.and (exc_spec hC) (funSpec_dom _)) ?_
  intro vs s r t ⟨hE, hd, hbe⟩ hg Γ hG _ ⟨⟨fs, hch⟩, _⟩
  have ⟨p, hps, hord, hL, _, _, hGl, _⟩ := hG
  obtain ⟨k0, hk0⟩ := hF.empty
  obtain ⟨v0, hv0, -⟩ := hGl _ k0 hk0
  obtain ⟨e, c, err, E, S, rfl, he, hc, -, hr, hglob, hmem⟩ := hE hg ⟨v0, hv0⟩
  obtain ⟨e', c', rest, hfs, he', hc', -⟩ := hch.chain
  rw [he, Option.some.injEq] at he'
  rw [hc, Option.some.injEq] at hc'
  subst he' hc'
  have htop : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch htop
  obtain ⟨oc, hoc, hocb, hoct⟩ := ck_obj hch htop
  dsimp only at hoeb hocb
  subst hoeb hocb
  have hse := ev_size hF hL hoe hoet
  have hsc := ck_size hF hL hoc hoct
  have hbne : oe.base ≠ oc.base := base_ne_of_ty hL hoe hoc (by rw [hoet, hoct]; exact hF.ne)
  have hmod : ModifiesOnly (excCells oe.base oc.base) s.memory t.memory := by
    rw [hmem]; exact excMem_mod _ _ _ _ _ _
  have hold : (rd s.memory (oe.base + BitVec.ofNat 64 128)).toNat < 2 ^ 32 := by
    obtain ⟨-, -, -, -, hFl, -⟩ := hG
    have := hFl oe hoe 16 (by unfold Obj.HasSlot; omega)
    rw [hoet, hF.ev16] at this
    exact this
  have hv : (rd t.memory (oe.base + BitVec.ofNat 64 128)).toNat < 2 ^ 32 := by
    rw [hmem]
    exact excMem_rd128 _ _ _ _ _ _
      (cell_ne hord hL hoe hoc (by omega) (by omega) (Or.inl hbne)) hold
  have hsafe : SafeCellsB C H Γ s t (excCells oe.base oc.base) := by
    intro a ha
    unfold excCells at ha
    rcases ha with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact safeB_of_safe (safe_ev hF hL hoe hoet (j := 8) (by simp [evDriverSlots]) (by simp [Obj.cell]))
    · exact safeB_of_safe (safe_ev hF hL hoe hoet (j := 9) (by simp [evDriverSlots]) (by simp [Obj.cell]))
    · exact safeB_of_safe (safe_ev hF hL hoe hoet (j := 24) (by simp [evDriverSlots]) (by simp [Obj.cell]))
    · exact safeB_of_safe (safe_ev hF hL hoe hoet (j := 23) (by simp [evDriverSlots]) (by simp [Obj.cell]))
    · exact safeB_of_safe (safe_ev hF hL hoe hoet (j := 20) (by simp [evDriverSlots]) (by simp [Obj.cell]))
    · exact safeB_of_safe (safe_ev hF hL hoe hoet (j := 15) (by simp [evDriverSlots]) (by simp [Obj.cell]))
    · exact safe_ev16 hF hL hoe hoet (by simp [Obj.cell]) hv
    · exact safeB_of_safe (safe_ck hF hL hoc hoct (j := 4) (by omega) (by omega) (by simp [Obj.cell]))
  have hG' : G C H Γ t := G_safeB hF.hooks hG hsafe hmod hglob hd hbe
  refine ⟨Γ, p, p, ⟨hps, by rw [ptrsOf_congr hglob]; exact hps, mono_refl p, ext_refl Γ,
    newFresh_refl Γ p, hG', mod_safeB hsafe hmod, fun g _ _ => by rw [hglob],
    fun _ => newFresh_refl Γ p, fun v _ i rt w hrt => by simp [sg1] at hrt⟩, ?_⟩
  intro v hv
  -- the chain is kept
  have hnE := hch.nodupE
  have hnC := hch.nodupC
  rw [hfs] at hnE hnC
  simp only [List.map_cons] at hnE hnC
  have hkeep : ChainKeep s t fs := by
    refine ⟨gword_congr hglob _, gword_congr hglob _, ?_, ?_, ?_, ?_, ?_⟩
    rotate_left 2
    · intro f hf k hk
      rw [hfs] at hf
      simp only [List.head?_cons, Option.mem_def, Option.some.injEq] at hf
      subst hf
      have hk' : k = 24 ∨ k = 40 := by simpa [evMem, evMemCap] using hk
      refine fld_mod hmod ?_
      have hx : oe.base + BitVec.ofNat 64 k ≠ oc.base + BitVec.ofNat 64 32 :=
        cell_ne hord hL hoe hoc (by omega) (by omega) (Or.inl hbne)
      unfold excCells
      rcases hk' with rfl | rfl <;>
      · rintro (h | h | h | h | h | h | h | h)
        all_goals first | (simp at h; done) | exact hx h
    · intro p' hp'
      exact ⟨p', by rw [← ptrsOf_congr hglob]; exact hp', rfl⟩
    rotate_left 1
    · intro f hf k hk
      obtain ⟨o, ho, hob, hot⟩ := ck_obj hch hf
      rw [← hob]
      have hks : k < 104 := by
        simp [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart, ckOutSize] at hk
        omega
      refine fld_mod hmod (not_excCells hord hL hoe hoc ho hse hsc
        (by have := ck_size hF hL ho hot; omega)
        (base_ne_of_ty hL ho hoe (by rw [hot, hoet]; exact hF.ne.symm)) (Or.inr ?_))
      simp [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart, ckOutSize] at hk
      omega
    · intro f hf k hk
      rw [hfs] at hf
      obtain ⟨o, ho, hob, hot⟩ := ev_obj hch (f := f) (by rw [hfs]; exact List.mem_cons_of_mem _ hf)
      rw [← hob]
      have hks : k < 280 := by
        simp [evParentSlots, evSp, evStackCap, evMem, evMemCap, evMemLen] at hk
        omega
      have hne : o.base ≠ oe.base := by
        rw [hob]
        exact ne_mem_nodup hnE (List.mem_map_of_mem hf)
      exact fld_mod hmod (not_excCells hord hL hoe hoc ho hse hsc
        (by have := ev_size hF hL ho hot; omega) hne
        (Or.inl (base_ne_of_ty hL ho hoc (by rw [hot, hoct]; exact hF.ne))))
    · intro f hf k hk
      obtain ⟨o, ho, hob, hot⟩ := ev_obj hch hf
      rw [← hob]
      have hk' : k = 144 ∨ k = 216 := by simpa [evRetd, evRetdCap] using hk
      by_cases hne : o.base = oe.base
      · rw [hne]
        refine fld_mod hmod ?_
        have hx : oe.base + BitVec.ofNat 64 k ≠ oc.base + BitVec.ofNat 64 32 :=
          cell_ne hord hL hoe hoc (by omega) (by omega) (Or.inl hbne)
        unfold excCells
        rcases hk' with rfl | rfl <;>
        · rintro (h | h | h | h | h | h | h | h)
          all_goals first | (simp at h; done) | exact hx h
      · exact fld_mod hmod (not_excCells hord hL hoe hoc ho hse hsc
          (by have := ev_size hF hL ho hot; omega) hne
          (Or.inl (base_ne_of_ty hL ho hoc (by rw [hot, hoct]; exact hF.ne))))
  have hst : GStep C tEV Γ Γ s t oe.base := by
    refine gStep_refl hps (by rw [ptrsOf_congr hglob]; exact hps) hord hL fun e' he' het hne => ?_
    have hsz := ev_size hF hL he' het
    have hnc := base_ne_of_ty hL he' hoc (by rw [het, hoct]; exact hF.ne)
    exact ⟨fld_mod hmod (not_excCells hord hL hoe hoc he' hse hsc (by omega) hne (Or.inl hnc)),
      fld_mod hmod (not_excCells hord hL hoe hoc he' hse hsc (by omega) hne (Or.inl hnc))⟩
  have hch' := chainL_keep hch hkeep (top := oe.base)
    (fun f hf => by rw [hfs] at hf; simp only [List.head?_cons, Option.mem_def, Option.some.injEq] at hf; rw [← hf]) hst
  refine ⟨⟨fs, hch'⟩, ?_⟩
  rw [phi_eq hch'.chain, phi_eq hch.chain, hfs, wsum_cons, wsum_cons]
  -- the other frames keep their weights
  have hrest : wsum t.memory rest = wsum s.memory rest := by
    refine wsum_keep fun f hf => ⟨fun k hk => ?_, ?_⟩
    · obtain ⟨o, ho, hob, hot⟩ := ev_obj hch (f := f) (by rw [hfs]; exact List.mem_cons_of_mem _ hf)
      rw [← hob]
      have hne : o.base ≠ oe.base := by rw [hob]; exact ne_mem_nodup hnE (List.mem_map_of_mem hf)
      have hks : k < 280 := by
        simp [evGasLeft, evSpilled, evRunning] at hk
        omega
      exact fld_mod hmod (not_excCells hord hL hoe hoc ho hse hsc
        (by have := ev_size hF hL ho hot; omega) hne
        (Or.inl (base_ne_of_ty hL ho hoc (by rw [hot, hoct]; exact hF.ne))))
    · obtain ⟨o, ho, hob, hot⟩ := ck_obj hch (f := f) (by rw [hfs]; exact List.mem_cons_of_mem _ hf)
      rw [← hob]
      have hne : o.base ≠ oc.base := by rw [hob]; exact ne_mem_nodup hnC (List.mem_map_of_mem hf)
      exact fld_mod hmod (not_excCells hord hL hoe hoc ho hse hsc
        (by have := ck_size hF hL ho hot; unfold ckDone; omega)
        (base_ne_of_ty hL ho hoe (by rw [hot, hoet]; exact hF.ne.symm)) (Or.inl hne))
  rw [hrest]
  -- the top frame: `CK_DONE = 1`, `SPILLED = 0`, `GAS_LEFT ≤ GAS_LEFT + SPILLED`
  have hx : ∀ j, j < 280 → oe.base + BitVec.ofNat 64 j ≠ oc.base + BitVec.ofNat 64 32 :=
    fun j hj => cell_ne hord hL hoe hoc (by omega) (by omega) (Or.inl hbne)
  have hrun : fld t.memory oe.base 104 = fld s.memory oe.base 104 := by
    refine fld_mod hmod ?_
    unfold excCells
    rintro (h | h | h | h | h | h | h | h)
    all_goals first | (simp at h; done) | exact hx 104 (by omega) h
  have hdone : fld t.memory oc.base 32 = 1 := by
    rw [hmem]; unfold fld; rw [rd_upd, if_pos rfl]
  have hsp : fld t.memory oe.base 192 = 0 := by
    rw [hmem]; unfold fld; rw [rd_upd, if_neg (hx 192 (by omega))]
    unfold excMem haltMem refillMem
    split <;> simp [rd_upd]
  have hgas : (fld t.memory oe.base 64).toNat ≤
      (fld s.memory oe.base 64).toNat + (fld s.memory oe.base 192).toNat := by
    rw [hmem]; unfold fld; rw [rd_upd, if_neg (hx 64 (by omega))]
    unfold excMem haltMem refillMem
    split
    · simp [rd_upd]
    · simp only [rd_upd, if_true, if_neg (show oe.base + BitVec.ofNat 64 64 ≠
          oe.base + BitVec.ofNat 64 160 by simp), if_neg (show oe.base + BitVec.ofNat 64 64 ≠
          oe.base + BitVec.ofNat 64 192 by simp), if_neg (show oe.base + BitVec.ofNat 64 64 ≠
          oe.base + BitVec.ofNat 64 72 by simp)]
      rw [BitVec.toNat_add]
      exact Nat.mod_le _ _
  rw [act_eq he hc, wt_eq s.memory oe.base oc.base, wt_eq t.memory oe.base oc.base, hdone, hsp,
    hrun]
  have h10 : ¬ ((1 : BitVec 64) = 0 ∧ fld s.memory oe.base 104 ≠ 0) := by
    rintro ⟨h, -⟩; exact absurd h (by decide)
  rw [if_neg h10]
  have h0 : (0 : BitVec 64).toNat = 0 := rfl
  rw [h0]
  split_ifs <;> omega

end InitECandidate.Solver.MemSafe.Frames
