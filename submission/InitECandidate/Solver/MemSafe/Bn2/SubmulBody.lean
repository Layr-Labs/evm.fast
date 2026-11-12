import InitECandidate.Solver.MemSafe.WaveHelpers.HSeq
import InitECandidate.Solver.MemSafe.Helpers.Basic
import InitECandidate.Solver.MemSafe.Bn2.Util
import InitECandidate.Solver.MemSafe.Bn2.MulCode
import InitECandidate.Solver.Spec.Fq12.CodeFq12Inv
import InitECandidate.Solver.MemSafe.AExp
import InitECandidate.Solver.Spec.Fq12.MemOps

set_option autoImplicit false

/-!
# `fq_poly_submul`: the loop body in the activation invariant

```
fun 1 fq_poly_submul(1 a, 1 b, {1,1,1,1} q, 1 s, 1 db) {
  var i = 0;
  while i <=+ db {
    var {1,1,1,1} bi = lds {1,1,1,1} (b + i * 32);
    var {1,1,1,1} p = fq_mul(q, bi);
    var {1,1,1,1} ai = lds {1,1,1,1} (a + (s + i) * 32);
    ai = fq_sub(ai, p);
    st a + (s + i) * 32, ai;
    i = i + 1; }
  return 0; }
```
The callees `fq_mul`, `fq_sub` are used through their capability summaries
(`CSumm ... ⟨[any, any], [], [], false⟩ []`, the fold table entries). The store hits
`[a + 32 (s + i), +32)`, which lies inside the entry buffer `a: buf 416` when `s + db <= 12`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bn2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

/-- The signature of the field callees `fq_mul`, `fq_sub` in the fold table. -/
def sgFq : Sig := ⟨[.any, .any], [], [], false⟩

/-- `x = f(args);` for a capability-summary callee, keeping a locals invariant. -/
theorem hoareG_callASP {a : Act σ} (ha : ActOK a X) {f x : MlS}
    {args : List (ExpHOL 64)} {sg' : Sig} (hf : CSumm σ X a.Cb a.H f sg' [])
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L L' : WaveHelpers.LocalsH → Prop}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ ∀ y, ArgCells sg'.params vs y → a.Foot y)
    (h : ∀ s : State σ, L s.locals → ∀ v,
      isValidValueHOLExact s.toExact .local x v = true → L' (setVarHOLFinite x v s).locals) :
    HoareG σ X (WaveHelpers.PreH a L) (callTo x f args) (WaveHelpers.SPA a L') := by
  unfold callTo
  refine hoareG_callA (summ_funSpec hf) ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh⟩ vs hvs callee v st hR _ hval
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := WaveHelpers.heap_call ha hh hR (by simp [Good])
      (by simp [Abortive]) hA hF hgw hgr
    exact ⟨fun _ => ⟨h s hL v hval, Γ', q', ext_trans he he',
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩, fun r' h => absurd h (by simp)⟩
  · intro s hs ⟨hL, Γ, p, he, hh⟩ vs hvs callee r st hR _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := WaveHelpers.heap_call ha hh hR (WaveHelpers.abn_good' habn) hna
      hA hF hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

/-! ## Locals -/

abbrev LocalsH := WaveHelpers.LocalsH

def SL (A S DB I : BitVec 64) (m : LocalsH) : Prop :=
  LkW m "a" A ∧ LkW m "s" S ∧ LkW m "db" DB ∧ LkW m "i" I

def SLI (A S DB : BitVec 64) (m : LocalsH) : Prop :=
  ∃ I : BitVec 64, SL A S DB I m ∧ I.toNat ≤ DB.toNat + 1

def SLA (A S DB I : BitVec 64) (m : LocalsH) : Prop :=
  SL A S DB I m ∧ ∃ ws : List (BitVec 64), ws.length = 4 ∧ m.lookup (nm "ai") = some (wv ws)

theorem LkW.set {s : State σ} {x y : String} {w : BitVec 64} {v : ValueHOL 64}
    (h : LkW s.locals x w) (hne : nm y ≠ nm x) : LkW (setVarHOLFinite (nm y) v s).locals x w := by
  unfold LkW at *
  rw [lk_set_ne _ _ hne]
  exact h

theorem SL.set {s : State σ} {A S DB I : BitVec 64} {y : String} {v : ValueHOL 64}
    (h : SL A S DB I s.locals) (h1 : nm y ≠ nm "a") (h2 : nm y ≠ nm "s") (h3 : nm y ≠ nm "db")
    (h4 : nm y ≠ nm "i") : SL A S DB I (setVarHOLFinite (nm y) v s).locals :=
  ⟨h.1.set h1, h.2.1.set h2, h.2.2.1.set h3, h.2.2.2.set h4⟩

theorem SL.res {A S DB I : BitVec 64} {m : LocalsH} {y : String} (old : Option (ValueHOL 64))
    (h : SL A S DB I m) (h1 : nm y ≠ nm "a") (h2 : nm y ≠ nm "s") (h3 : nm y ≠ nm "db")
    (h4 : nm y ≠ nm "i") : SL A S DB I (m.resVarEq (nm y, old)) :=
  ⟨h.1.res old h1, h.2.1.res old h2, h.2.2.1.res old h3, h.2.2.2.res old h4⟩

theorem SLI.res {A S DB : BitVec 64} {m : LocalsH} {y : String} (old : Option (ValueHOL 64))
    (h : SLI A S DB m) (h1 : nm y ≠ nm "a") (h2 : nm y ≠ nm "s") (h3 : nm y ≠ nm "db")
    (h4 : nm y ≠ nm "i") : SLI A S DB (m.resVarEq (nm y, old)) := by
  obtain ⟨I, hI, hle⟩ := h
  exact ⟨I, hI.res old h1 h2 h3 h4, hle⟩

theorem evsLen {s : State σ} : ∀ {es : List (ExpHOL 64)} {vs : List (ValueHOL 64)},
    evs s es = some vs → vs.length = es.length
  | [], vs, h => by rw [evs_nil] at h; cases h; rfl
  | e :: es, vs, h => by
      obtain ⟨v, vs', rfl, -, hvs⟩ := evs_cons_inv h
      simp [evsLen hvs]

theorem ev_subAddr {t : State σ} {A S I : BitVec 64} (ha : LkW t.locals "a" A)
    (hs : LkW t.locals "s" S) (hi : LkW t.locals "i" I) :
    ev t Fq12.subAddr = some (.val (.word (A + (S + I) * BitVec.ofNat 64 32))) :=
  ev_add2 (ev_lw ha) (ev_mul2 (ev_add2 (ev_lw hs) (ev_lw hi)) (ev_cw _ 32))

/-- A valid new value of a four-word local has four words. -/
theorem valid_wv4 {s : State σ} {x : MlS} {ws : List (BitVec 64)} {v : ValueHOL 64}
    (hx : s.locals.lookup x = some (wv ws)) (hl : ws.length = 4)
    (h : isValidValueHOLExact s.toExact .local x v = true) :
    ∃ ws' : List (BitVec 64), ws'.length = 4 ∧ v = wv ws' := by
  rw [← isValidValueHOLFinite_eq] at h
  unfold isValidValueHOLFinite lookupKvarHOLFinite at h
  rw [hx] at h
  dsimp only at h
  rw [shapeOf_wv, hl] at h
  exact eq_wv_of_shapeEq' h

theorem toNat_slot {A S I : BitVec 64} (hSI : S.toNat + I.toNat ≤ 12) (hA : A.toNat + 416 < 2 ^ 64) :
    (A + (S + I) * BitVec.ofNat 64 32).toNat = A.toNat + 32 * (S.toNat + I.toNat) := by
  have e1 : (S + I).toNat = S.toNat + I.toNat := by
    rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
  have e2 : ((S + I) * BitVec.ofNat 64 32).toNat = 32 * (S.toNat + I.toNat) := by
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 32) (by decide), e1,
      Nat.mod_eq_of_lt (by omega)]
    omega
  rw [BitVec.toNat_add, e2, Nat.mod_eq_of_lt (by omega)]

theorem toNat_slot_cell {A S I : BitVec 64} (hSI : S.toNat + I.toNat ≤ 12)
    (hA : A.toNat + 416 < 2 ^ 64) (j : Nat) (hj : j < 4) :
    (A + (S + I) * BitVec.ofNat 64 32 + BitVec.ofNat 64 (8 * j)).toNat =
      A.toNat + 32 * (S.toNat + I.toNat) + 8 * j := by
  rw [BitVec.toNat_add, toNat_slot hSI hA, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8 * j) (by omega),
    Nat.mod_eq_of_lt (by omega)]

/-- **One iteration** of the loop. -/
theorem hoareG_submulIter {a : Act σ} (ha : ActOK a X) {A S DB I : BitVec 64}
    (hmul : CSumm σ X a.Cb a.H (nm "fq_mul") sgFq [])
    (hsub : CSumm σ X a.Cb a.H (nm "fq_sub") sgFq [])
    (hI : I.toNat ≤ DB.toNat) (hSD : S.toNat + DB.toNat ≤ 12) (hA : A.toNat + 416 < 2 ^ 64)
    (hbuf : ∀ Γ p (s : State σ), Ext a.Γ0 Γ → Heap a Γ p s → ∀ x,
      Overlap A.toNat 416 x → (SCell a.Cb Γ x ∨ ¬ InObj Γ x.toNat) ∧ a.Foot x) :
    HoareG σ X (WaveHelpers.PreH a (SL A S DB I)) Fq12.submulBody1
      (WaveHelpers.SPA a (SLI A S DB)) := by
  have hgw : ∀ g ∈ sgFq.gw, g ∈ a.sg.gw := fun g hg => absurd hg (by simp [sgFq])
  have hgr : sgFq.grows = true → a.sg.grows = true := fun h => absurd h (by simp [sgFq])
  have hps : ∀ pt ∈ sgFq.params, pt = PT.any := by simp [sgFq]
  have hargsF : ∀ (L : LocalsH → Prop) (args : List (ExpHOL 64)) (hl : args.length = 2),
      ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sgFq.params vs ∧ ∀ y, ArgCells sgFq.params vs y → a.Foot y :=
    fun L args hl s _ _ Γ p _ _ vs hvs =>
      ⟨WaveHelpers.argsOK_any hps (by simp [sgFq, evsLen hvs, hl]),
        fun y hy => absurd hy (WaveHelpers.argCells_any hps)⟩
  unfold Fq12.submulBody1
  -- var bi = lds ...
  refine WaveHelpers.hoareG_decSP ha.hH (L' := SL A S DB I) (L0' := SLI A S DB)
    (fun s _ hL v _ => hL.set (by decide) (by decide) (by decide) (by decide)) ?_
    (fun m old h => h.res old (by decide) (by decide) (by decide) (by decide))
  -- var p = fq_mul(q, bi)
  refine WaveHelpers.hoareG_decCallSP ha hmul hgw hgr (L' := SL A S DB I) (L0' := SLI A S DB)
    (hargsF _ _ rfl) (fun s hL v _ => hL.set (by decide) (by decide) (by decide) (by decide)) ?_
    (fun m old h => h.res old (by decide) (by decide) (by decide) (by decide))
  -- var ai = lds ...
  refine WaveHelpers.hoareG_decSP ha.hH (L' := SLA A S DB I) (L0' := SLI A S DB) ?_ ?_
    (fun m old h => h.res old (by decide) (by decide) (by decide) (by decide))
  · intro s _ hL v hv
    obtain ⟨hav, hdom⟩ := Spec.Fq12.ev_load4_inv (ev_subAddr hL.1 hL.2.1 hL.2.2.2) hv
    subst hav
    exact ⟨hL.set (by decide) (by decide) (by decide) (by decide), _, Spec.Fq12.words4_length _ _,
      lk_set_self _ _ _⟩
  -- ai = fq_sub(ai, p); st ...; i = i + 1
  refine WaveHelpers.hoareG_seqSP (L := SLA A S DB I) WaveHelpers.spa_of_abn ?_ ?_
  · refine hoareG_callASP ha hsub hgw hgr (hargsF _ _ rfl) ?_
    intro s ⟨hL, ws, hws, hai⟩ v hval
    obtain ⟨ws', hws', rfl⟩ := valid_wv4 hai hws hval
    exact ⟨hL.set (by decide) (by decide) (by decide) (by decide), ws', hws', lk_set_self _ _ _⟩
  refine WaveHelpers.hoareG_seqSP (L := SLA A S DB I) WaveHelpers.spa_of_abn ?_ ?_
  · refine hoareG_store fun s hs ⟨⟨hL, ws, hws, hai⟩, Γ, p, he, hh⟩ w v' mem hw hv hst => ?_
    rw [ev_lv, hai] at hv
    have hv' : wv ws = v' := Option.some.inj hv
    subst hv'
    rw [ev_subAddr hL.1 hL.2.1 hL.2.2.2] at hw
    cases hw
    obtain ⟨hm, hdom⟩ := Helpers.stores_mod hst
    have hlen4 : (flattenHOL (wv ws)).length = 4 :=
      flatten_len _ 4 (by rw [shapeOf_wv, hws]; rfl)
    have hSI : S.toNat + I.toNat ≤ 12 := by omega
    have h8 : (A + (S + I) * BitVec.ofNat 64 32).toNat % 8 = 0 := by
      have := ha.hal _ (hs.2.1 ▸ hdom 0 (by omega))
      simpa using this
    rw [toNat_slot hSI hA] at h8
    have hcell : ∀ x : BitVec 64, (∃ j, j < (flattenHOL (wv ws)).length ∧
        x = A + (S + I) * BitVec.ofNat 64 32 + BitVec.ofNat 64 (8 * j)) →
        Overlap A.toNat 416 x := by
      rintro x ⟨j, hj, rfl⟩
      rw [hlen4] at hj
      rw [Overlap, toNat_slot_cell hSI hA j hj]
      refine ⟨?_, ?_, ?_⟩ <;> omega
    exact ⟨fun _ => ⟨⟨hL, ws, hws, hai⟩, Γ, p, he,
      WaveHelpers.heap_store_buf ha hh hm (fun x hx => (hbuf Γ p s he hh x (hcell x hx)).1)
        (fun x hx => (hbuf Γ p s he hh x (hcell x hx)).2)⟩, fun r' h => absurd h (by simp)⟩
  · refine WaveHelpers.hoareG_assignSP ha.hH fun s _ ⟨hL, ws, hws, hai⟩ v hv => ?_
    obtain ⟨hA', hS', hD', hI'⟩ := hL
    rw [ev_inc hI'] at hv
    cases hv
    refine ⟨_, ⟨hA'.set (by decide), hS'.set (by decide), hD'.set (by decide), lk_set_self _ _ _⟩, ?_⟩
    rw [toNat_inc (by omega)]
    omega

end InitECandidate.Solver.MemSafe.Bn2