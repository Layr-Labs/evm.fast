import InitECandidate.Solver.MemSafe.Pre.Kit2
import InitECandidate.Solver.MemSafe.LogQ
import InitECandidate.Solver.MemSafe.WaveHelpers.Run

set_option autoImplicit false

/-!
# `emit_transfer_log`: the summary

`etlSig = ⟨[any, any, any], [], [], true⟩`, **hand precondition** `EtlPre`: the global `ev` points at
an EV object `e0 ∈ Γ`, and `ev[88]` (slot 11, the log list) is the base of a list header `Lh ∈ Γ`
of element size 8. **`PW`** = `LaPW Γ` (only list header and list array cells are written);
`grows := true` (the push may allocate a new list array). `Q = True`.

The body allocates three temporaries (`log` 40, `topics` 96, `data` 32 bytes); the `memcpy`,
`memzero` and `u256_to_be32` calls write only into them; the final `log_append(ev, log)` is
`Inc.sumSpec_log_append`. Callee summaries (all fold entries) are hypotheses:
`u256_is_zero`, `memcpy`, `memzero`, `u256_to_be32` at `[any, buf 32]`.

Caller obligation: `EtlPre` (a CSumm cannot carry it: `ev[88]` is only a `prot` word).
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Pre
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Inc
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def etlSig : Sig := ⟨[.any, .any, .any], [], [], true⟩

def EtlPre (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ e0 ∈ Γ, e0.ty = tEV ∧ gword s (nm "ev") = some e0.base ∧
    ∃ Lh ∈ Γ, Lh.ty ∈ lstTys ∧ lstE Lh.ty = 8 ∧
      Lh.base = rd s.memory (e0.base + BitVec.ofNat 64 88)

/-! ## Locals -/

def EL (Sd Rc : BitVec 64) (Av : ValueHOL 64) (m : HolFiniteMapExact MlS (ValueHOL 64)) : Prop :=
  m.lookup (nm "sender") = some (.val (.word Sd)) ∧
    m.lookup (nm "recipient") = some (.val (.word Rc)) ∧ m.lookup (nm "amount") = some Av

def EL1 (Sd Rc : BitVec 64) (Av : ValueHOL 64) (Lg : BitVec 64)
    (m : HolFiniteMapExact MlS (ValueHOL 64)) : Prop :=
  EL Sd Rc Av m ∧ m.lookup (nm "log") = some (.val (.word Lg))

def EL2 (Sd Rc : BitVec 64) (Av : ValueHOL 64) (Lg Tp : BitVec 64)
    (m : HolFiniteMapExact MlS (ValueHOL 64)) : Prop :=
  EL1 Sd Rc Av Lg m ∧ m.lookup (nm "topics") = some (.val (.word Tp))

def EL3 (Sd Rc : BitVec 64) (Av : ValueHOL 64) (Lg Tp Dt : BitVec 64)
    (m : HolFiniteMapExact MlS (ValueHOL 64)) : Prop :=
  EL2 Sd Rc Av Lg Tp m ∧ m.lookup (nm "data") = some (.val (.word Dt))

/-! ## Glue -/

theorem evs1 {u : State σ} {a : ExpHOL 64} {vs : List (ValueHOL 64)} (h : evs u [a] = some vs) :
    ∃ x, vs = [x] ∧ ev u a = some x := by
  obtain ⟨x, r1, rfl, hx, hr1⟩ := evs_cons_inv h
  have hr : r1 = [] := by
    have h0 : evs u ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at hr1; exact (Option.some.inj hr1).symm
  subst hr
  exact ⟨x, rfl, hx⟩

theorem ev_eq {u : State σ} {e : ExpHOL 64} {x y : ValueHOL 64} (h : ev u e = some x)
    (h' : ev u e = some y) : x = y := Option.some.inj (h.symm.trans h')

def gW (u : State σ) (g : MlS) : BitVec 64 := (gword u g).getD 0

theorem ev_gW {u : State σ} {g : MlS} {w : BitVec 64} (h : gword u g = some w) :
    ev u (.var .global g) = some (.val (.word (gW u g))) := by
  unfold gword at h
  unfold gW gword
  split at h
  · rename_i w' hw
    simp only [Option.some.injEq] at h
    subst h
    show u.globals.lookup g = _
    rw [hw]
    simp
  · simp at h

theorem gword_typed {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}
    {Γ : Gam} {u : State σ} (hT : Struct.Trk guestC H Γ0 s0 p0 PW Γ u) {g : MlS} {k : FK}
    (hg : guestC.GT.lookup g = some k) : ∃ w, gword u g = some w := by
  obtain ⟨q, -, -, -, -, -, hGl, -⟩ := Struct.trk_G hT
  obtain ⟨w, hw, -⟩ := hGl g k hg
  exact ⟨w, hw⟩

theorem ovl_off {Ar : BitVec 64} {n k : Nat} (h8 : Ar.toNat % 8 = 0) (hb : Ar.toNat + n < 2 ^ 64)
    (hk8 : k % 8 = 0) (hkn : k < n) : Overlap Ar.toNat n (Ar + BitVec.ofNat 64 k) := by
  have h := toNat_add_ofNat Ar k (by omega)
  exact ⟨by rw [h]; omega, by rw [h]; omega, by rw [h]; omega⟩

theorem natOf (n : Nat) (hn : n < 2 ^ 32) : (BitVec.ofNat 64 n).toNat = n := by
  rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)

theorem mcArgs {p0 : Ptrs} {bl : List (BitVec 64 × Nat)} {Tb : BitVec 64} {Nb : Nat}
    (hb : (Tb, Nb) ∈ bl) (k n : Nat) (hn : n < 2 ^ 32) (hkn : k + n ≤ Nb) (D : BitVec 64)
    (hD : D.toNat = Tb.toNat + k) (S : ValueHOL 64) :
    (∀ Γ p, BlkL p0 p Γ bl → ArgsOK guestC Γ p Helpers.sigMemcpy.params
      [.val (.word D), S, .val (.word (BitVec.ofNat 64 n))]) ∧
    (∀ x, ArgCells Helpers.sigMemcpy.params [.val (.word D), S, .val (.word (BitVec.ofNat 64 n))] x →
      ∃ b ∈ bl, Overlap b.1.toNat b.2 x) := by
  have hN := natOf n hn
  refine ⟨fun Γ p hbl => argsOK_mc (bufOK_bl hbl hb (by dsimp only; rw [hD]; omega)
    (by dsimp only; rw [hD, hN]; omega)), fun x hx => ⟨(Tb, Nb), hb, ?_⟩⟩
  have := argCells_mc hx
  rw [hN] at this
  exact ovl_bl (b := (Tb, Nb)) (by dsimp only; rw [hD]; omega) (by dsimp only; rw [hD]; omega) this

theorem mzArgs {p0 : Ptrs} {bl : List (BitVec 64 × Nat)} {Tb : BitVec 64} {Nb : Nat}
    (hb : (Tb, Nb) ∈ bl) (k n : Nat) (hn : n < 2 ^ 32) (hkn : k + n ≤ Nb) (D : BitVec 64)
    (hD : D.toNat = Tb.toNat + k) :
    (∀ Γ p, BlkL p0 p Γ bl → ArgsOK guestC Γ p Helpers.sigMemzero.params
      [.val (.word D), .val (.word (BitVec.ofNat 64 n))]) ∧
    (∀ x, ArgCells Helpers.sigMemzero.params [.val (.word D), .val (.word (BitVec.ofNat 64 n))] x →
      ∃ b ∈ bl, Overlap b.1.toNat b.2 x) := by
  have hN := natOf n hn
  refine ⟨fun Γ p hbl => argsOK_mz (bufOK_bl hbl hb (by dsimp only; rw [hD]; omega)
    (by dsimp only; rw [hD, hN]; omega)), fun x hx => ⟨(Tb, Nb), hb, ?_⟩⟩
  have := argCells_mz hx
  rw [hN] at this
  exact ovl_bl (b := (Tb, Nb)) (by dsimp only; rw [hD]; omega) (by dsimp only; rw [hD]; omega) this

theorem beArgs {p0 : Ptrs} {bl : List (BitVec 64 × Nat)} {Tb : BitVec 64} {Nb : Nat}
    (hb : (Tb, Nb) ∈ bl) (hkn : 32 ≤ Nb) (A : ValueHOL 64) :
    (∀ Γ p, BlkL p0 p Γ bl → ArgsOK guestC Γ p sigBe32.params [A, .val (.word Tb)]) ∧
    (∀ x, ArgCells sigBe32.params [A, .val (.word Tb)] x → ∃ b ∈ bl, Overlap b.1.toNat b.2 x) := by
  refine ⟨fun Γ p hbl => argsOK_be32 (bufOK_bl hbl hb le_rfl (by dsimp only; omega)),
    fun x hx => ⟨(Tb, Nb), hb, ?_⟩⟩
  have := argCells_be32 hx
  exact ovl_bl (b := (Tb, Nb)) le_rfl (by dsimp only; omega) this

/-! ## The body -/

section body
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

def EtlQ (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (r : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ Γ', Struct.Trk guestC H Γ0 s0 p0 (PWl Γ0 p0) Γ' t ∧
    ∀ p', ptrsOf t = some p' → LogSub Γ0 Γ' p'.hp s0.memory t.memory

theorem etlQ_locals (hH : HooksLawful guestC H) (r : Option (PanSemResultExact 64)) (t : State σ)
    (L : HolFiniteMapExact MlS (ValueHOL 64)) (h : EtlQ H Γ0 s0 p0 r t) :
    EtlQ H Γ0 s0 p0 r { t with locals := L } := by
  intro v hv
  obtain ⟨Γ', hT, hS⟩ := h v hv
  exact ⟨Γ', Struct.trk_congr hH hT rfl rfl rfl rfl, hS⟩

def sgZ : Sig := ⟨[.any], [], [], false⟩

theorem etl_hoare (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hLH : LstHooks H)
    (hFw : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tLOG → H.wf Γ s o)
    (hZ : CSumm σ X guestC H (nm "u256_is_zero") sgZ [])
    (hMC : CSumm σ X guestC H (nm "memcpy") Helpers.sigMemcpy [])
    (hMZ : CSumm σ X guestC H (nm "memzero") Helpers.sigMemzero [])
    (hB : CSumm σ X guestC H (nm "u256_to_be32") sigBe32 [])
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0) (hpre : EtlPre [] s0 Γ0)
    (Sd Rc : BitVec 64) (Av : ValueHOL 64) (hloc : EL Sd Rc Av s0.locals) :
    Hoare σ X (fun u => u = s0) etlBody (EtlQ H Γ0 s0 p0) := by
  have hH := hF.hH
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have hQ : ∀ r (t : State σ) L, EtlQ H Γ0 s0 p0 r t → EtlQ H Γ0 s0 p0 r { t with locals := L } :=
    fun r t L h => etlQ_locals hH r t L h
  have hT0 : ETk H Γ0 s0 p0 [] s0 :=
    ⟨Γ0, p0, Struct.trk_refl hG0 hp0, hp0, fun b hb => absurd hb (by simp)⟩
  have hheap : heapEnd < 2 ^ 64 := by decide
  refine hoare_pre (P := fun u => ETk H Γ0 s0 p0 [] u ∧ EL Sd Rc Av u.locals) ?_
    (fun u _ hu => by subst hu; exact ⟨hT0, hloc⟩)
  unfold etlBody
  -- `var z = u256_is_zero(amount)`
  refine et_decCall hH hZ (by simp [sgZ]) hord0 hL0 hQ (L' := fun _ m => EL Sd Rc Av m) ?_ ?_ ?_
  · intro u hL vs hvs
    obtain ⟨x, rfl, hx⟩ := evs1 hvs
    exact ⟨fun Γ p _ => argsOK_any (by simp [sgZ]) (by simp [sgZ]),
      fun y hy => absurd hy (argCells_any (by simp [sgZ]))⟩
  · intro s st v ⟨hs, hr, ha⟩
    exact ⟨(lk_set_ne _ _ (by decide)).trans hs, (lk_set_ne _ _ (by decide)).trans hr,
      (lk_set_ne _ _ (by decide)).trans ha⟩
  intro v
  -- `if z != 0 { return 0; }`
  refine Mpt.Leaves.hoare_retGuard (P := fun t => ETk H Γ0 s0 p0 [] t ∧ EL Sd Rc Av t.locals)
    ?_ (hoare_pre ?_ (fun _ _ h => h.1))
  · intro t _ ⟨⟨Γ, p, hT, hp, hbl⟩, hL⟩ w hw v' hv'
    exact ⟨Γ, Struct.trk_congr hH (trk_pw_mono (PW' := PWl Γ0 p0) (fun a ha => ha.elim) hT) rfl rfl rfl rfl,
      fun p' _ => logSub_of_protKeep hLH hG0 (fun a ha => trk_protKeep hord0 hL0 hT a ha)⟩
  -- `var log = alloc(40)`
  refine et_alloc hF hQ (bl := []) (L := EL Sd Rc Av) (L' := fun Lg m => EL1 Sd Rc Av Lg m)
    40 (by norm_num) ?_ ?_
  · intro s st Lg ⟨hs, hr, ha⟩
    exact ⟨⟨(lk_set_ne _ _ (by decide)).trans hs, (lk_set_ne _ _ (by decide)).trans hr,
      (lk_set_ne _ _ (by decide)).trans ha⟩, lk_set_self _ _ _⟩
  intro Lg hLg8 hLg1 hLg2
  have hLgb : Lg.toNat + 40 < 2 ^ 64 := by omega
  have hmL : (Lg, 40) ∈ [(Lg, 40)] := by simp
  -- `st log + 0, vm_system_address`
  refine seqE (et_store hH (bl := [(Lg, 40)]) (L := EL1 Sd Rc Av Lg) (A := Lg + BitVec.ofNat 64 0)
    (V := fun u => gW u (nm "vm_system_address")) ?_ ?_
    ⟨(Lg, 40), hmL, ovl_off hLg8 hLgb (by norm_num) (by norm_num)⟩) ?_
  · intro u hL
    exact ev_add2 (ev_lw hL.2) (ev_cw _ 0)
  · rintro u ⟨Γ, p, hT, -⟩ hL
    obtain ⟨w, hw⟩ := gword_typed hT gt_vm_system_address
    exact ev_gW hw
  -- `var topics = alloc(96)`
  refine et_alloc hF hQ (bl := [(Lg, 40)]) (L := EL1 Sd Rc Av Lg)
    (L' := fun Tp m => EL2 Sd Rc Av Lg Tp m) 96 (by norm_num) ?_ ?_
  · intro s st Tp ⟨⟨hs, hr, ha⟩, hl⟩
    exact ⟨⟨⟨(lk_set_ne _ _ (by decide)).trans hs, (lk_set_ne _ _ (by decide)).trans hr,
      (lk_set_ne _ _ (by decide)).trans ha⟩, (lk_set_ne _ _ (by decide)).trans hl⟩,
      lk_set_self _ _ _⟩
  intro Tp hTp8 hTp1 hTp2
  have hTpb : Tp.toNat + 96 < 2 ^ 64 := by omega
  have hmT : (Tp, 96) ∈ [(Tp, 96), (Lg, 40)] := by simp
  have hmL2 : (Lg, 40) ∈ [(Tp, 96), (Lg, 40)] := by simp
  -- `memcpy(topics, transfer_topic, 32)`
  refine seqE (et_call hH hMC (by simp [Helpers.sigMemcpy]) hord0 hL0 ?_) ?_
  · intro u hL vs hvs
    obtain ⟨x, y, z, rfl, hx, hy, hz⟩ := evs3 hvs
    obtain rfl := ev_eq hx (ev_lw hL.2)
    obtain rfl := ev_eq hz (ev_cw u 32)
    exact mcArgs hmT 0 32 (by norm_num) (by norm_num) Tp (by omega) y
  -- `memzero(topics + 32, 12)`
  refine seqE (et_call hH hMZ (by simp [Helpers.sigMemzero]) hord0 hL0 ?_) ?_
  · intro u hL vs hvs
    obtain ⟨x, y, rfl, hx, hy⟩ := evs2 hvs
    obtain rfl := ev_eq hx (ev_add2 (ev_lw hL.2) (ev_cw u 32))
    obtain rfl := ev_eq hy (ev_cw u 12)
    exact mzArgs hmT 32 12 (by norm_num) (by norm_num) _ (toNat_add_ofNat _ _ (by omega))
  -- `memcpy(topics + 44, sender, 20)`
  refine seqE (et_call hH hMC (by simp [Helpers.sigMemcpy]) hord0 hL0 ?_) ?_
  · intro u hL vs hvs
    obtain ⟨x, y, z, rfl, hx, hy, hz⟩ := evs3 hvs
    obtain rfl := ev_eq hx (ev_add2 (ev_lw hL.2) (ev_cw u 44))
    obtain rfl := ev_eq hz (ev_cw u 20)
    exact mcArgs hmT 44 20 (by norm_num) (by norm_num) _ (toNat_add_ofNat _ _ (by omega)) y
  -- `memzero(topics + 64, 12)`
  refine seqE (et_call hH hMZ (by simp [Helpers.sigMemzero]) hord0 hL0 ?_) ?_
  · intro u hL vs hvs
    obtain ⟨x, y, rfl, hx, hy⟩ := evs2 hvs
    obtain rfl := ev_eq hx (ev_add2 (ev_lw hL.2) (ev_cw u 64))
    obtain rfl := ev_eq hy (ev_cw u 12)
    exact mzArgs hmT 64 12 (by norm_num) (by norm_num) _ (toNat_add_ofNat _ _ (by omega))
  -- `memcpy(topics + 76, recipient, 20)`
  refine seqE (et_call hH hMC (by simp [Helpers.sigMemcpy]) hord0 hL0 ?_) ?_
  · intro u hL vs hvs
    obtain ⟨x, y, z, rfl, hx, hy, hz⟩ := evs3 hvs
    obtain rfl := ev_eq hx (ev_add2 (ev_lw hL.2) (ev_cw u 76))
    obtain rfl := ev_eq hz (ev_cw u 20)
    exact mcArgs hmT 76 20 (by norm_num) (by norm_num) _ (toNat_add_ofNat _ _ (by omega)) y
  -- `st log + 8, topics`
  refine seqE (et_store hH (A := Lg + BitVec.ofNat 64 8) (V := fun _ => Tp) ?_ ?_
    ⟨(Lg, 40), hmL2, ovl_off hLg8 hLgb (by norm_num) (by norm_num)⟩) ?_
  · intro u hL
    exact ev_add2 (ev_lw hL.1.2) (ev_cw _ 8)
  · intro u _ hL
    exact ev_lw hL.2
  -- `st log + 16, 3`: from here on the cell is tracked
  have hne : ∀ k j : Nat, k < 40 → j < 40 → k ≠ j →
      Lg + BitVec.ofNat 64 k ≠ Lg + BitVec.ofNat 64 j := by
    intro k j hk hj hkj he
    have h := congrArg BitVec.toNat he
    rw [toNat_add_ofNat _ _ (by omega), toNat_add_ofNat _ _ (by omega)] at h
    omega
  refine seqE (hoare_pre (et_storeM hH (M := fun _ => True)
      (M' := fun m => rd m (Lg + BitVec.ofNat 64 16) = BitVec.ofNat 64 3)
      (A := Lg + BitVec.ofNat 64 16) (V := fun _ => BitVec.ofNat 64 3) ?_ ?_
      ⟨(Lg, 40), hmL2, ovl_off hLg8 hLgb (by norm_num) (by norm_num)⟩ ?_)
    (fun _ _ h => ⟨h, trivial⟩)) ?_
  · intro u hL
    exact ev_add2 (ev_lw hL.1.2) (ev_cw _ 16)
  · intro u _ hL
    exact ev_cw u 3
  · intro u _
    exact rd_supd_self _ _ _
  have hMk : ∀ m m' : Mem, rd m (Lg + BitVec.ofNat 64 16) = BitVec.ofNat 64 3 →
      (∀ a, Overlap Lg.toNat 40 a → m' a = m a) →
      rd m' (Lg + BitVec.ofNat 64 16) = BitVec.ofNat 64 3 := by
    intro m m' h hk
    unfold rd at h ⊢
    rw [hk _ (ovl_off hLg8 hLgb (by norm_num) (by norm_num))]
    exact h
  -- `var data = alloc(32)`
  refine et_allocM hF hQ (K := fun a => Overlap Lg.toNat 40 a)
    (M := fun m => rd m (Lg + BitVec.ofNat 64 16) = BitVec.ofNat 64 3)
    (fun a ha => ⟨(Lg, 40), hmL2, ha⟩) (L := EL2 Sd Rc Av Lg Tp)
    (L' := fun Dt m => EL3 Sd Rc Av Lg Tp Dt m) 32 (by norm_num) ?_ ?_
  · intro s st Dt ⟨⟨⟨hs, hr, ha⟩, hl⟩, ht⟩
    exact ⟨⟨⟨⟨(lk_set_ne _ _ (by decide)).trans hs, (lk_set_ne _ _ (by decide)).trans hr,
      (lk_set_ne _ _ (by decide)).trans ha⟩, (lk_set_ne _ _ (by decide)).trans hl⟩,
      (lk_set_ne _ _ (by decide)).trans ht⟩, lk_set_self _ _ _⟩
  intro Dt hDt8 hDt1 hDt2 hDtK
  have hmD : (Dt, 32) ∈ [(Dt, 32), (Tp, 96), (Lg, 40)] := by simp
  have hmL3 : (Lg, 40) ∈ [(Dt, 32), (Tp, 96), (Lg, 40)] := by simp
  -- `u256_to_be32(amount, data)`
  refine seqE (et_callM hH hB (by simp [sigBe32]) hord0 hL0 hMk
    (K := fun a => Overlap Lg.toNat 40 a) (fun a ha => ⟨(Lg, 40), hmL3, ha⟩) ?_) ?_
  · intro u hL vs hvs
    obtain ⟨x, y, rfl, hx, hy⟩ := evs2 hvs
    obtain rfl := ev_eq hx (hL.1.1.1.2.2 : ev u (lv (nm "amount")) = some Av)
    obtain rfl := ev_eq hy (ev_lw hL.2)
    obtain ⟨h1, h2⟩ := beArgs (p0 := p0) hmD (by norm_num) x
    refine ⟨h1, fun a ha => ⟨h2 a ha, fun hK => hDtK a hK ?_⟩⟩
    have := argCells_be32 ha
    exact ovl_bl (b := (Dt, 32)) le_rfl (by dsimp only; omega) this
  -- `st log + 24, data`
  refine seqE (et_storeM hH (M := fun m => rd m (Lg + BitVec.ofNat 64 16) = BitVec.ofNat 64 3)
      (M' := fun m => rd m (Lg + BitVec.ofNat 64 16) = BitVec.ofNat 64 3)
      (A := Lg + BitVec.ofNat 64 24) (V := fun _ => Dt) ?_ ?_
    ⟨(Lg, 40), hmL3, ovl_off hLg8 hLgb (by norm_num) (by norm_num)⟩ ?_) ?_
  · intro u hL
    exact ev_add2 (ev_lw hL.1.1.2) (ev_cw _ 24)
  · intro u _ hL
    exact ev_lw hL.2
  · intro u h
    rw [rd_supd_ne _ _ (hne 16 24 (by norm_num) (by norm_num) (by norm_num))]
    exact h
  -- `st log + 32, 32`
  refine seqE (et_storeM hH (M := fun m => rd m (Lg + BitVec.ofNat 64 16) = BitVec.ofNat 64 3)
      (M' := fun m => LogF m Lg)
      (A := Lg + BitVec.ofNat 64 32) (V := fun _ => BitVec.ofNat 64 32) ?_ ?_
    ⟨(Lg, 40), hmL3, ovl_off hLg8 hLgb (by norm_num) (by norm_num)⟩ ?_) ?_
  · intro u hL
    exact ev_add2 (ev_lw hL.1.1.2) (ev_cw _ 32)
  · intro u _ hL
    exact ev_cw u 32
  · intro u h
    constructor
    · rw [rd_supd_ne _ _ (hne 16 32 (by norm_num) (by norm_num) (by norm_num)), h]
      decide
    · rw [rd_supd_self]
      decide
  -- `log_append(ev, log)`
  refine seqE (et_logAppend hF hM hLH hFw hG0 hp0 hord0 hL0 (lgb := Lg) hmL3 (arg2 := lv (nm "log"))
    (L := EL3 Sd Rc Av Lg Tp Dt) ?_) ?_
  · intro u Γ hT hL
    obtain ⟨e0, he0, het, hge, Lh, hLh, hLt, hLE, hLb⟩ := hpre
    obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpg, -, -⟩ := id hT
    have hgu : gword u (nm "ev") = some e0.base := by
      unfold gword at hge ⊢
      rw [hpg (nm "ev") (by decide)]
      exact hge
    refine ⟨e0.base, by show ev u (.var .global (nm "ev")) = _; simpa [gW, hgu] using ev_gW hgu,
      ev_lw hL.1.1.2, ?_⟩
    obtain ⟨Lh1, hLh1, hb1, ht1, -⟩ := hx Lh hLh
    refine ⟨Lh1, hLh1, ?_, ht1 ▸ hLt, ?_⟩
    · rw [hb1, hLb]
      exact (ev_keep hord0 hL0 hT he0 het).symm
    · rw [ht1]; exact hLE
  exact hoare_return (fun t _ ⟨Γ', hT, hS⟩ w _ v' hv' => ⟨Γ', Struct.trk_congr hH hT rfl rfl rfl rfl, hS⟩)

end body

/-- **`emit_transfer_log`**: only list header and list array cells are written. -/
theorem sumSpecA_emit_transfer_log {H : Hooks σ} (hF : FoldOK σ X guestC H)
    (hM : HooksMono guestC H) (hLH : LstHooks H)
    (hFw : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tLOG → H.wf Γ s o)
    (hZ : CSumm σ X guestC H (nm "u256_is_zero") sgZ [])
    (hMC : CSumm σ X guestC H (nm "memcpy") Helpers.sigMemcpy [])
    (hMZ : CSumm σ X guestC H (nm "memzero") Helpers.sigMemzero [])
    (hB : CSumm σ X guestC H (nm "u256_to_be32") sigBe32 []) :
    SumSpecA σ X guestC H (nm "emit_transfer_log") etlSig EtlPre (fun _ _ Γ a => LaPW Γ a)
      LogQ := by
  refine sumSpecA_of_returns (noExc_emit_transfer_log hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, hlen, hall⟩ := lookupCode_gen code_emit_transfer_log hl'
  rcases vs with _ | ⟨A, _ | ⟨B, _ | ⟨C, _ | ⟨D, vs⟩⟩⟩⟩ <;> simp [etlPs] at hlen
  have h0 := hall 0 (by simp [etlPs]) (by simp)
  have h1 := hall 1 (by simp [etlPs]) (by simp)
  have h2 := hall 2 (by simp [etlPs]) (by simp)
  obtain ⟨Sd, rfl⟩ := val_of_shapeEq_one h0.2
  obtain ⟨Rc, rfl⟩ := val_of_shapeEq_one h1.2
  obtain ⟨p0, hp0, -⟩ := hargs
  have hEL : EL Sd Rc C s0.locals := by
    rw [hloc]
    exact ⟨h0.1, h1.1, h2.1⟩
  have H' := etl_hoare hF hM hLH hFw hZ hMC hMZ hB hG0 hp0 hpre Sd Rc C hEL s0 hs rfl
    (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨Γ', hT, hSub⟩ := H' v rfl
  obtain ⟨p', hc⟩ := trk_sumCoreA (sg := etlSig)
    (PWs := fun a => ProtCell guestC Γ0 a ∧ LaPW Γ0 a)
    (vs := [.val (.word Sd), .val (.word Rc), C]) (r := r) hT hp0
    (fun h => by simp [etlSig] at h) (fun _ _ w _ i rt w' hi _ => by simp [etlSig] at hi)
  refine ⟨Γ', p0, p', hc, ⟨v, hv⟩, fun w hw q hq => ?_⟩
  exact hSub q hq

end InitECandidate.Solver.MemSafe.Pre

#print axioms InitECandidate.Solver.MemSafe.Pre.etl_hoare
#print axioms InitECandidate.Solver.MemSafe.Pre.sumSpecA_emit_transfer_log
