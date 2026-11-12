import InitECandidate.Solver.MemSafe.Frames.ProStep

/-!
# `frame_prologue`'s summary on the chain extension (frames10, task 1)

**`pro_sumSpecX`**: `frame_prologue` (`ProCode.proBody`) has the footprint-free summary
`SumSpecT … (sg0 [journal_n]) (PreInvX … GP GR M) (QProX … GP GR)` that `start_sumSpecX` needs,
from its callees' summaries (**`ProCallees`**):

* `u256_is_zero`, `memeq`, `precompile_index`: pure fold entries (`CSumm`, no capabilities);
* `move_ether`: Pre `JrNZ`, `buf 20` arguments (the running message's CALLER / CURRENT_TARGET
  blocks, `BufOK` by the head frame's `GP`), `prot` writes in `PWtopM []`;
* `emit_transfer_log` (Pre **`EtlPre`**: the running EV's log list) and `run_precompile` (Pre
  **`RpPre`**, footprint `PWtopM gasKs`, post **`RpQ`**: gas not raised): open in this lane
  (frames9 F3; the helper lane proves them);
* `KeepsFp` of all six.

Every step keeps `KP` (`ProStep`), so on every non-abortive result the chain extension holds and
`Φ` is not raised.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3200000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

/-! ## The callee facts -/

/-- `move_ether(sender, recipient, value)`'s signature (the fold's: two `buf 20` addresses). -/
def sgME : Sig := ⟨[.buf 20, .buf 20, .any], [], [Hooks.gJn], true⟩

/-- A pure fold signature (`n` unconstrained arguments, no growth). -/
def sgP (n : Nat) : Sig := ⟨List.replicate n .any, [], [], false⟩

/-- **`emit_transfer_log`'s precondition**: the running EV record's log list (`EV 88`) is a `Γ` list
header of element size 8 (what `log_append(ev, log)` pushes onto). -/
def EtlPre (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ e, EvRun tEV Γ s e ∧ ∃ L, LstObj Γ (fld s.memory e.base 88) L

/-- **`run_precompile`'s precondition**: the running EV record, its message (`EV 112`) a `Γ`
message object, `JrNZ`. -/
def RpPre (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  (∃ e, EvRun tEV Γ s e ∧ ∃ M, MsgObj Γ (fld s.memory e.base 112) M) ∧ JrNZ s

/-- **`run_precompile`'s post**: the running frame's `GAS_LEFT + SPILLED` is not raised. -/
def RpQ (_ : List (ValueHOL 64)) (s : State σ) (_ : Gam) (_ : PanSemResultExact 64) (t : State σ)
    (_ : Gam) : Prop :=
  ∀ e, gword s nmEv = some e →
    (fld t.memory e 64).toNat + (fld t.memory e 192).toNat ≤
      (fld s.memory e 64).toNat + (fld s.memory e 192).toNat

/-- **`frame_prologue`'s callee facts.** -/
structure ProCallees (σ : Type) (X : Ctx 64) (H : Hooks σ) : Prop where
  z : CSumm σ X guestC H (nm "u256_is_zero") (sgP 1) []
  zF : KeepsFp σ X (nm "u256_is_zero")
  me : SumSpecA σ X guestC H (nm "move_ether") sgME (fun _ s _ => JrNZ s) (PWtopM tEV tCK [])
    (fun _ _ _ _ _ _ => True)
  meF : KeepsFp σ X (nm "move_ether")
  mq : CSumm σ X guestC H (nm "memeq") (sgP 3) []
  mqF : KeepsFp σ X (nm "memeq")
  etl : SumSpecA σ X guestC H (nm "emit_transfer_log") (sgA 3 []) EtlPre (PWtopL tEV tCK []) LogQ
  etlF : KeepsFp σ X (nm "emit_transfer_log")
  lstH : Hooks.LstHooks H
  pi : CSumm σ X guestC H (nm "precompile_index") (sgP 1) []
  piF : KeepsFp σ X (nm "precompile_index")
  rp : SumSpecA σ X guestC H (nm "run_precompile") (sgA 1 []) RpPre (PWtopM tEV tCK gasKs) RpQ
  rpF : KeepsFp σ X (nm "run_precompile")

/-! ## Small facts -/

theorem sgP_any (n : Nat) : ∀ pt ∈ (sgP n).params, pt = .any := by
  intro pt h; simp only [sgP, List.mem_replicate] at h; exact h.2

theorem reqOK_nil {s : State σ} {Γ : Gam} : ReqOK [] s Γ := fun _ h => absurd h (by simp)

theorem capPW_nil {s : State σ} {Γ : Gam} {a : BitVec 64} : ¬ CapPW [] s Γ a := by
  rintro ⟨c, hc, -⟩; cases hc

/-- The two message-address loads and one more argument. -/
theorem evs_msg3 {s : State σ} {mg : BitVec 64}
    (hm : s.locals.lookup (nm "msg") = some (.val (.word mg))) {x : ExpHOL 64}
    {vs : List (ValueHOL 64)} (h : evs s [lLoad "msg" 16, lLoad "msg" 32, x] = some vs) :
    ∃ v, vs = [.val (.word (fld s.memory mg 16)), .val (.word (fld s.memory mg 32)), v] := by
  obtain ⟨a, vs1, rfl, ha, h1⟩ := evs_cons_inv h
  obtain ⟨b, vs2, rfl, hb, h2⟩ := evs_cons_inv h1
  obtain ⟨c, vs3, rfl, -, h3⟩ := evs_cons_inv h2
  rw [evs_zero h3, ev_lLoad_eq hm ha, ev_lLoad_eq hm hb]
  exact ⟨c, rfl⟩

theorem argsOK_me {Γ : Gam} {p : Ptrs} {a b : BitVec 64} {v : ValueHOL 64}
    (h1 : BufOK guestC Γ p a.toNat 20) (h2 : BufOK guestC Γ p b.toNat 20) :
    ArgsOK guestC Γ p sgME.params [.val (.word a), .val (.word b), v] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | _ | i
  · simp only [sgME, List.getElem?_cons_zero, Option.some.injEq] at hpt hw
    subst hpt hw; exact ⟨a, rfl, h1⟩
  · simp only [sgME, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hw
    subst hpt hw; exact ⟨b, rfl, h2⟩
  · simp only [sgME, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt
    subst hpt; trivial
  · simp [sgME] at hpt

/-- The running EV record of a chain. -/
theorem evRun_of_chainL {Γ : Gam} {u : State σ} {e c : BitVec 64} {rest : List Frame}
    (hch : ChainL guestC tEV tCK Γ u ((e, c) :: rest)) :
    ∃ o, EvRun tEV Γ u o ∧ o.base = e := by
  obtain ⟨e', c', rest', hfs', he', -, -⟩ := hch.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
  obtain ⟨⟨he1, -⟩, -⟩ := hfs'
  rw [← he1] at he'
  obtain ⟨o, ho, hob, hot⟩ := (hch.objs (e, c) (List.mem_cons_self ..)).1
  exact ⟨o, ⟨ho, hot, by rw [hob]; exact he'⟩, hob⟩

theorem ev_head {Γ : Gam} {u : State σ} {e c : BitVec 64} {rest : List Frame}
    (hch : ChainL guestC tEV tCK Γ u ((e, c) :: rest)) : gword u nmEv = some e := by
  obtain ⟨o, ⟨-, -, h⟩, rfl⟩ := evRun_of_chainL hch
  exact h

/-! ## The body -/

section body
variable {H : Hooks σ}

/-- The post inside the body: a normal end with `K` and the `msg` local, or an abnormal one with
`K` when non-abortive. -/
def PL (K : State σ → Prop) (mg : BitVec 64) (ro : Option (PanSemResultExact 64)) (t : State σ) :
    Prop :=
  (ro = none ∧ K t ∧ t.locals.lookup (nm "msg") = some (.val (.word mg))) ∨
    (ro ≠ none ∧ ∀ r, ro = some r → ¬ Abortive r → K t)

theorem pl_of_ps {K : State σ → Prop} {mg : BitVec 64} {L : Locs}
    (hL : L.lookup (nm "msg") = some (.val (.word mg))) {ro : Option (PanSemResultExact 64)}
    {t : State σ} (h : PS K L ro t) : PL K mg ro t := by
  rcases h with ⟨h0, hk, hl⟩ | h
  · exact Or.inl ⟨h0, hk, by rw [hl]; exact hL⟩
  · exact Or.inr h

theorem pl_res {K : State σ → Prop} (hK : ∀ (t : State σ) l, K t → K { t with locals := l })
    {mg : BitVec 64} {n : MlS} (hn : n ≠ nm "msg") (o : Option (ValueHOL 64))
    {ro : Option (PanSemResultExact 64)} {t : State σ} (h : PL K mg ro t) :
    PL K mg ro { t with locals := t.locals.resVarEq (n, o) } := by
  rcases h with ⟨h0, hk, hl⟩ | ⟨h0, hk⟩
  · refine Or.inl ⟨h0, hK _ _ hk, ?_⟩
    show (t.locals.resVarEq (n, o)).lookup (nm "msg") = _
    rw [lookup_resVarEq_ne _ _ hn]; exact hl
  · exact Or.inr ⟨h0, fun r hr hna => hK _ _ (hk r hr hna)⟩

theorem kp_locF (hH : HooksLawful guestC H) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e mg : BitVec 64} :
    ∀ (t : State σ) (l : Locs), KP H gw Γ0 s0 p0 fs e mg t →
      KP H gw Γ0 s0 p0 fs e mg { t with locals := l } := fun _ _ h => kp_locals hH h _

variable (hF : FrameCfg guestC H tEV tCK) (hK : ProCallees σ X H) {Γ0 : Gam} {s0 : State σ}
  {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
  (hfs : fs = (e, c) :: rest)
include hF hK hfs

omit hF hK in
/-- The head frame's `GP` at a `KP` state. -/
theorem gp_head {u : State σ} {Γ1 : Gam} {p1 : Ptrs} (hp : ptrsOf u = some p1)
    (hE : ChainE GP GR Γ1 u fs) : GP Γ1 u.memory p1 (e, c) :=
  hE.1 p1 hp (e, c) (by rw [hfs]; exact List.mem_cons_self ..)

/-- `emit_transfer_log(msg[16], msg[32], v)`. -/
theorem pro_etl {u0 : State σ} (hu : KP H [Hooks.gJn] Γ0 s0 p0 fs e mg u0)
    (hm : u0.locals.lookup (nm "msg") = some (.val (.word mg))) :
    HoareG σ X (fun t => t = u0)
      (callD (nm "emit_transfer_log") [lLoad "msg" 16, lLoad "msg" 32, lv (nm "v")])
      (PL (KP H [Hooks.gJn] Γ0 s0 p0 fs e mg) mg) := by
  refine hoareG_conseq (hoareG_kpCallDL hK.lstH hF hfs hK.etl hK.etlF (by simp [sgA]) (by decide)
    (by decide) (ks := []) (by simp) hu ?_ (fun _ _ _ _ _ _ h => h) (Or.inl rfl)
    (fun vs callee _ _ _ _ _ hq hp2 => logQ_sub (s := callEntryStateHOLFinite u0 callee) hq hp2))
    (fun _ _ h => h) (fun _ _ _ _ h => pl_of_ps hm h)
  intro vs hvs Γ1 p1 hp hG hL hE
  obtain ⟨v, rfl⟩ := evs_msg3 hm hvs
  refine ⟨argsOK_any (sgA_any 3 []) (by simp [sgA]), fun callee => ?_⟩
  obtain ⟨o, ⟨ho, hot, hob⟩, hoe⟩ := evRun_of_chainL (hfs ▸ hL)
  obtain ⟨-, -, hLs, -⟩ := gp_head hfs hp hE
  exact ⟨o, ⟨ho, hot, hob⟩, by rw [hoe]; exact hLs⟩

/-- `if same == 0 { emit_transfer_log(…) }`. -/
theorem pro_ite_same {u0 : State σ} (hu : KP H [Hooks.gJn] Γ0 s0 p0 fs e mg u0)
    (hm : u0.locals.lookup (nm "msg") = some (.val (.word mg))) :
    HoareG σ X (fun t => t = u0)
      (.ite (.cmp .equal (lv (nm "same")) (cw 0))
        (callD (nm "emit_transfer_log") [lLoad "msg" 16, lLoad "msg" 32, lv (nm "v")]) .skip)
      (PL (KP H [Hooks.gJn] Γ0 s0 p0 fs e mg) mg) := by
  refine hoareG_ite ?_ ?_
  · exact hoareG_pre (pro_etl hF hK hfs hu hm) fun _ _ h => h.1
  · exact hoareG_skip fun _ _ h => by rw [h.1]; exact Or.inl ⟨rfl, hu, hm⟩

/-- `var same = memeq(msg[16], msg[32], 20); if same == 0 { … }`. -/
theorem pro_memeq {u0 : State σ} (hu : KP H [Hooks.gJn] Γ0 s0 p0 fs e mg u0)
    (hm : u0.locals.lookup (nm "msg") = some (.val (.word mg))) :
    HoareG σ X (fun t => t = u0)
      (.decCall (nm "same") .one (nm "memeq") [lLoad "msg" 16, lLoad "msg" 32, cw 20]
        (.ite (.cmp .equal (lv (nm "same")) (cw 0))
          (callD (nm "emit_transfer_log") [lLoad "msg" 16, lLoad "msg" 32, lv (nm "v")]) .skip))
      (PL (KP H [Hooks.gJn] Γ0 s0 p0 fs e mg) mg) := by
  have hH := hF.hooks
  refine hoareG_kpDecCall hF hfs hK.mq hK.mqF (by simp [sgP]) (by decide) (by decide)
    (ks := []) (by simp) hu ?_ (fun _ _ _ _ _ _ h => absurd h capPW_nil) (Or.inl rfl) ?_ ?_
  · intro vs hvs _ _ _ _ _ _
    refine ⟨argsOK_any (sgP_any 3) ?_, fun _ => reqOK_nil⟩
    obtain ⟨v, rfl⟩ := evs_msg3 hm hvs
    rfl
  · intro v st hst
    refine hoareG_conseq (pro_ite_same hF hK hfs (kp_locals hH hst _) ?_) (fun _ _ h => h)
      (fun _ _ _ _ h => pl_res (kp_locF hH) (by decide) _ h)
    show (setVarHOLFinite _ _ _).locals.lookup _ = _
    rw [lk_set_ne _ _ (by decide)]; exact hm
  · intro ro t hro h; exact Or.inr ⟨hro, h⟩

/-- `move_ether(msg[16], msg[32], v); var same = …`. -/
theorem pro_move {u0 : State σ} (hu : KP H [Hooks.gJn] Γ0 s0 p0 fs e mg u0)
    (hm : u0.locals.lookup (nm "msg") = some (.val (.word mg))) :
    HoareG σ X (fun t => t = u0)
      (.seq (callD (nm "move_ether") [lLoad "msg" 16, lLoad "msg" 32, lv (nm "v")])
        (.decCall (nm "same") .one (nm "memeq") [lLoad "msg" 16, lLoad "msg" 32, cw 20]
          (.ite (.cmp .equal (lv (nm "same")) (cw 0))
            (callD (nm "emit_transfer_log") [lLoad "msg" 16, lLoad "msg" 32, lv (nm "v")]) .skip)))
      (PL (KP H [Hooks.gJn] Γ0 s0 p0 fs e mg) mg) := by
  have h112 : fld u0.memory e 112 = mg := hu.2.choose_spec.choose_spec.2.2.2.2
  refine hoareG_seq (hoareG_kpCallD hF hfs hK.me hK.meF (by simp [sgME]) (by decide)
    (by decide) (ks := []) (by simp) hu ?_ (fun _ _ _ _ _ _ h => h) (Or.inl rfl)) ?_ ?_
  · intro vs hvs Γ1 p1 hp hG hL hE
    obtain ⟨v, rfl⟩ := evs_msg3 hm hvs
    obtain ⟨-, hB, -, -⟩ := gp_head hfs hp hE
    have hmo : msgOf u0.memory (e, c) = mg := h112
    rw [hmo] at hB
    exact ⟨argsOK_me (hB 16 (by simp [msgXOffs])) (hB 32 (by simp [msgXOffs])),
      fun _ => jrNZ_congr rfl hu.1⟩
  · intro r t _ hr _ h
    rcases h with ⟨h0, -⟩ | h
    · exact absurd h0 hr
    · exact Or.inr h
  · refine hoareG_pt fun u h => ?_
    rcases h with ⟨-, hk, hl⟩ | ⟨h0, -⟩
    · exact pro_memeq hF hK hfs hk (by rw [hl]; exact hm)
    · exact absurd rfl h0

/-- `if z == 0 { move_ether … }`. -/
theorem pro_ite_z {u0 : State σ} (hu : KP H [Hooks.gJn] Γ0 s0 p0 fs e mg u0)
    (hm : u0.locals.lookup (nm "msg") = some (.val (.word mg))) :
    HoareG σ X (fun t => t = u0)
      (.ite (.cmp .equal (lv (nm "z")) (cw 0))
        (.seq (callD (nm "move_ether") [lLoad "msg" 16, lLoad "msg" 32, lv (nm "v")])
          (.decCall (nm "same") .one (nm "memeq") [lLoad "msg" 16, lLoad "msg" 32, cw 20]
            (.ite (.cmp .equal (lv (nm "same")) (cw 0))
              (callD (nm "emit_transfer_log") [lLoad "msg" 16, lLoad "msg" 32, lv (nm "v")])
              .skip)))
        .skip)
      (PL (KP H [Hooks.gJn] Γ0 s0 p0 fs e mg) mg) := by
  refine hoareG_ite ?_ ?_
  · exact hoareG_pre (pro_move hF hK hfs hu hm) fun _ _ h => h.1
  · exact hoareG_skip fun _ _ h => by rw [h.1]; exact Or.inl ⟨rfl, hu, hm⟩

/-- The value transfer `proXfer`. -/
theorem pro_xfer {u0 : State σ} (hu : KP H [Hooks.gJn] Γ0 s0 p0 fs e mg u0)
    (hm : u0.locals.lookup (nm "msg") = some (.val (.word mg))) :
    HoareG σ X (fun t => t = u0) proXfer (PL (KP H [Hooks.gJn] Γ0 s0 p0 fs e mg) mg) := by
  have hH := hF.hooks
  have hKl : ∀ (t : State σ) l, KP H [Hooks.gJn] Γ0 s0 p0 fs e mg t →
      KP H [Hooks.gJn] Γ0 s0 p0 fs e mg { t with locals := l } := fun _ _ h => kp_locals hH h _
  unfold proXfer
  refine hoareG_ite ?_ ?_
  · refine hoareG_pre (P := fun t => t = u0) ?_ fun _ _ h => h.1
    refine hoareG_dec fun s _ hs vv _ _ => ?_
    rw [hs]
    refine hoareG_conseq (Q := PL (KP H [Hooks.gJn] Γ0 s0 p0 fs e mg) mg) ?_ (fun _ _ h => h)
      (fun _ _ _ _ h => pl_res hKl (by decide) _ h)
    have hu1 := kp_locals hH hu (setVarHOLFinite (nm "v") vv u0).locals
    have hm1 : (setVarHOLFinite (nm "v") vv u0).locals.lookup (nm "msg") =
        some (.val (.word mg)) := by rw [lk_set_ne _ _ (by decide)]; exact hm
    refine hoareG_kpDecCall hF hfs hK.z hK.zF (by simp [sgP]) (by decide) (by decide)
      (ks := []) (by simp) hu1 ?_ (fun _ _ _ _ _ _ h => absurd h capPW_nil) (Or.inl rfl) ?_ ?_
    · intro vs hvs _ _ _ _ _ _
      exact ⟨argsOK_any (sgP_any 1) (by rw [evs_one hvs]; rfl), fun _ => reqOK_nil⟩
    · intro v st hst
      refine hoareG_conseq (pro_ite_z hF hK hfs (kp_locals hH hst _) ?_) (fun _ _ h => h)
        (fun _ _ _ _ h => pl_res hKl (by decide) _ h)
      show (setVarHOLFinite _ _ _).locals.lookup _ = _
      rw [lk_set_ne _ _ (by decide)]; exact hm1
    · intro ro t hro h; exact Or.inr ⟨hro, h⟩
  · exact hoareG_skip fun _ _ h => by rw [h.1]; exact Or.inl ⟨rfl, hu, hm⟩

/-- `if msg[168] == 0 { run_precompile(pi); } return 1`. -/
theorem pro_run {u0 : State σ} (hu : KP H [Hooks.gJn] Γ0 s0 p0 fs e mg u0)
    (hm : u0.locals.lookup (nm "msg") = some (.val (.word mg))) :
    HoareG σ X (fun t => t = u0)
      (.seq (.ite (.cmp .equal (lLoad "msg" 168) (cw 0))
          (callD (nm "run_precompile") [lv (nm "pi")]) .skip)
        (.return (cw 1)))
      (PL (KP H [Hooks.gJn] Γ0 s0 p0 fs e mg) mg) := by
  have hH := hF.hooks
  have he : gword u0 nmEv = some e := by
    obtain ⟨-, Γ1, p1, -, hch, -⟩ := hu
    exact ev_head (hfs ▸ hch)
  refine hoareG_seq (R := PL (KP H [Hooks.gJn] Γ0 s0 p0 fs e mg) mg) ?_
    (fun _ _ _ _ _ h => h) ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_pre (P := fun t => t = u0) ?_ fun _ _ h => h.1
      refine hoareG_conseq (hoareG_kpCallD hF hfs hK.rp hK.rpF (by simp [sgA]) (by decide)
        (by decide) (ks := gasKs) (fun _ h => h) hu ?_ (fun _ _ _ _ _ _ h => h)
        (Or.inr fun _ callee _ _ _ _ hq => hq e he)) (fun _ _ h => h)
        (fun _ _ _ _ h => pl_of_ps hm h)
      intro vs hvs Γ1 p1 hp hG hL hE
      refine ⟨argsOK_any (sgA_any 1 []) (by rw [evs_one hvs]; rfl), fun callee => ⟨?_, ?_⟩⟩
      · obtain ⟨o, ⟨ho, hot, hob⟩, hoe⟩ := evRun_of_chainL (hfs ▸ hL)
        obtain ⟨hMs, -, -, -⟩ := gp_head hfs hp hE
        exact ⟨o, ⟨ho, hot, hob⟩, by rw [hoe]; exact hMs⟩
      · exact jrNZ_congr rfl hu.1
    · exact hoareG_skip fun _ _ h => by rw [h.1]; exact Or.inl ⟨rfl, hu, hm⟩
  · refine hoareG_return fun s _ h v _ => ?_
    rcases h with ⟨-, hk, -⟩ | ⟨h0, -⟩
    · exact Or.inr ⟨by simp, fun _ _ _ => kp_locals hH hk _⟩
    · exact absurd rfl h0

/-- The precompile dispatch `proPre`. -/
theorem pro_pre {u0 : State σ} (hu : KP H [Hooks.gJn] Γ0 s0 p0 fs e mg u0)
    (hm : u0.locals.lookup (nm "msg") = some (.val (.word mg))) :
    HoareG σ X (fun t => t = u0) proPre (PL (KP H [Hooks.gJn] Γ0 s0 p0 fs e mg) mg) := by
  have hH := hF.hooks
  have hKl : ∀ (t : State σ) l, KP H [Hooks.gJn] Γ0 s0 p0 fs e mg t →
      KP H [Hooks.gJn] Γ0 s0 p0 fs e mg { t with locals := l } := fun _ _ h => kp_locals hH h _
  unfold proPre
  refine hoareG_ite ?_ ?_
  · refine hoareG_pre (P := fun t => t = u0) ?_ fun _ _ h => h.1
    refine hoareG_kpDecCall hF hfs hK.pi hK.piF (by simp [sgP]) (by decide) (by decide)
      (ks := []) (by simp) hu ?_ (fun _ _ _ _ _ _ h => absurd h capPW_nil) (Or.inl rfl) ?_ ?_
    · intro vs hvs _ _ _ _ _ _
      exact ⟨argsOK_any (sgP_any 1) (by rw [evs_one hvs]; rfl), fun _ => reqOK_nil⟩
    · intro v st hst
      have hm1 : (setVarHOLFinite (nm "pi") v { st with locals := u0.locals }).locals.lookup
          (nm "msg") = some (.val (.word mg)) := by
        rw [lk_set_ne _ _ (by decide)]; exact hm
      have hst1 := kp_locals hH hst (setVarHOLFinite (nm "pi") v { st with locals := u0.locals }).locals
      refine hoareG_ite ?_ ?_
      · refine hoareG_pre (P := fun t => t = setVarHOLFinite (nm "pi") v
          { st with locals := u0.locals }) ?_ fun _ _ h => h.1
        exact hoareG_conseq (pro_run hF hK hfs hst1 hm1) (fun _ _ h => h)
          (fun _ _ _ _ h => pl_res hKl (by decide) _ h)
      · exact hoareG_skip fun _ _ h => by
          rw [h.1]
          exact pl_res hKl (by decide) _ (Or.inl ⟨rfl, hst1, hm1⟩)
    · intro ro t hro h; exact Or.inr ⟨hro, h⟩
  · exact hoareG_skip fun _ _ h => by rw [h.1]; exact Or.inl ⟨rfl, hu, hm⟩

/-- **The body**: on every non-abortive result, `KP` (with `mg` the entry's `EV_MSG`). -/
theorem pro_body (hs0 : KP H [Hooks.gJn] Γ0 s0 p0 fs e (fld s0.memory e 112) s0) :
    HoareG σ X (fun u => u = s0) proBody
      (fun ro t => ∀ r, ro = some r → ¬ Abortive r →
        KP H [Hooks.gJn] Γ0 s0 p0 fs e (fld s0.memory e 112) t) := by
  have hH := hF.hooks
  set mg := fld s0.memory e 112 with hmg
  have he0 : gword s0 nmEv = some e := by
    obtain ⟨-, Γ1, p1, -, hch, -⟩ := hs0
    exact ev_head (hfs ▸ hch)
  have hfin : ∀ r t, r ≠ none → PL (KP H [Hooks.gJn] Γ0 s0 p0 fs e mg) mg r t →
      ∀ r', r = some r' → ¬ Abortive r' → KP H [Hooks.gJn] Γ0 s0 p0 fs e mg t := by
    intro r t hr h
    rcases h with ⟨h0, -⟩ | ⟨-, h⟩
    · exact absurd h0 hr
    · exact h
  unfold proBody
  refine hoareG_seq (R := fun ro t => ro = none ∧ t = s0)
    (hoareG_skip fun _ _ h => ⟨rfl, h⟩) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoareG_pre (P := fun u => u = s0) ?_ fun _ _ h => h.2
  refine hoareG_dec fun s _ hs vm hvm _ => ?_
  rw [hs] at *; clear hs
  obtain ⟨rfl, -⟩ := ev_gLoad_eq he0 hvm
  refine hoareG_conseq (Q := fun ro t => ∀ r, ro = some r → ¬ Abortive r →
      KP H [Hooks.gJn] Γ0 s0 p0 fs e mg t) ?_ (fun _ _ h => h)
    (fun _ _ _ _ h r hr hna => kp_locals hH (h r hr hna) _)
  have hu1 := kp_locals hH hs0 (setVarHOLFinite (nm "msg") (.val (.word mg)) s0).locals
  have hm1 : (setVarHOLFinite (nm "msg") (.val (.word mg)) s0).locals.lookup (nm "msg") =
      some (.val (.word mg)) := lk_set_self _ _ _
  refine hoareG_seq (R := PL (KP H [Hooks.gJn] Γ0 s0 p0 fs e mg) mg)
    (pro_xfer hF hK hfs hu1 hm1) (fun r t _ hr _ h => hfin r t hr h) ?_
  refine hoareG_pt fun u h => ?_
  rcases h with ⟨-, hk, hl⟩ | ⟨h0, -⟩
  swap; · exact absurd rfl h0
  refine hoareG_dec fun s _ hs vca _ _ => ?_
  rw [hs] at *; clear hs
  refine hoareG_conseq (Q := fun ro t => ∀ r, ro = some r → ¬ Abortive r →
      KP H [Hooks.gJn] Γ0 s0 p0 fs e mg t) ?_ (fun _ _ h => h)
    (fun _ _ _ _ h r hr hna => kp_locals hH (h r hr hna) _)
  have hu2 := kp_locals hH hk (setVarHOLFinite (nm "ca") vca u).locals
  have hm2 : (setVarHOLFinite (nm "ca") vca u).locals.lookup (nm "msg") =
      some (.val (.word mg)) := by rw [lk_set_ne _ _ (by decide)]; exact hl
  refine hoareG_seq (R := PL (KP H [Hooks.gJn] Γ0 s0 p0 fs e mg) mg)
    (pro_pre hF hK hfs hu2 hm2) (fun r t _ hr _ h => hfin r t hr h) ?_
  refine hoareG_pt fun w h => ?_
  rcases h with ⟨-, hk3, -⟩ | ⟨h0, -⟩
  swap; · exact absurd rfl h0
  refine hoareG_seq (R := fun ro t => ro = none ∧ t = w)
    (hoareG_skip fun _ _ h => ⟨rfl, h⟩) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoareG_return fun s _ h v _ => ?_
  rw [h.2]
  exact fun _ _ _ => kp_locals hH hk3 _

end body

/-- **`frame_prologue`'s summary on the chain extension**, from its callees' facts. -/
theorem pro_sumSpecX {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hF : FrameCfg guestC H tEV tCK) (hK : ProCallees σ X H) {M : Nat} :
    SumSpecT σ X guestC H (nm "frame_prologue") (sg0 [Hooks.gJn])
      (PreInvX guestC tEV tCK GP GR M) (QProX guestC tEV tCK GP GR) := by
  intro vs body callee rs hl s0 hs0 hloc r hr hg hna Γ hG _ ⟨⟨hx0, _⟩, hJ0⟩
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_zero code_pro hl
  have ⟨p, hps, _⟩ := hG
  obtain ⟨fs, hch0, hE0⟩ := hx0
  obtain ⟨e, c, rest, hfs, -, -, -⟩ := hch0.chain
  have hk0 : KP H [Hooks.gJn] Γ s0 p fs e (fld s0.memory e 112) s0 :=
    ⟨hJ0, Γ, p, runT_refl hG hps, hch0, hE0, le_refl _, rfl⟩
  have H0 := pro_body hF hK hfs hk0 s0 hs0 rfl (by rw [hr]; exact hg)
  rw [hr] at H0
  obtain ⟨Γ', p', hrun, hx, hΦ, hRt⟩ := kLeX_of_kp (H0 r rfl hna) hch0.chain
  exact ⟨Γ', p, p', sumCoreT_of_runT (sg := sg0 [Hooks.gJn]) rfl rfl hrun,
    fun _ _ => ⟨hx, hΦ, hRt⟩, fun _ _ => ⟨hx, hΦ, hRt⟩⟩

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.pro_body
#print axioms InitECandidate.Solver.MemSafe.Frames.pro_sumSpecX
