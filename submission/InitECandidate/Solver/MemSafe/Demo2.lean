import InitECandidate.Solver.MemSafe.Builtin

/-!
# The M1 checker on real guest functions, end to end

A cut-down configuration (`EV` frame record with the measure fields and the fields carrying
dependent invariants `prot`; `BS`; abstract `HTAB`; `WS`; `LST`). The checker runs by
`decide_cbv` on the `guestFn_*` declarations; `summ_of_chk` turns an accepted body into the
frozen summary `Summ` against the real code map (`guestCode`).

* `summ_pc_add`, `summ_track_ancestor_access`: plain summaries, for every lawful hook
  family `H`, every context with the guest code map and an aligned memory domain;
* `op_stop` (writes `EV_RUNNING`) and `frame_halt` (writes `EV_GAS_LEFT`) are rejected.
-/

set_option maxRecDepth 100000
set_option cbv.maxSteps 400000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def evSlots : List FK :=
  [ .scalar, .prot, .prot, .prot, .prot, .prot, .scalar, .scalar, .prot, .scalar, .scalar,
    .ptr 4, .scalar, .prot, .scalar, .scalar, .prot, .ptr 2, .prot, .scalar, .scalar,
    .ptr 2, .ptr 2, .scalar, .prot, .scalar, .prot, .prot, .prot, .prot,
    .scalar, .scalar, .scalar, .scalar, .scalar ]

def demoC : Cfg :=
  ⟨[ ⟨.scratch, evSlots, .prot, 280⟩,
     ⟨.heap, [.ptr 3, .ptr 2, .ptr 2, .ptr 2, .ptr 2, .ptr 2, .ptr 2, .scalar, .scalar, .ptr 2],
       .prot, 80⟩,
     ⟨.heap, [], .prot, 88⟩,
     ⟨.heap, [.scalar, .scalar, .scalar, .scalar, .ptr 2], .prot, 40⟩,
     ⟨.heap, [], .prot, 24⟩ ],
   [(nm "ev", .ptr 0), (nm "bs", .ptr 1), (nm "ws", .ptr 3)],
   [nm "ev", nm "cur_cont", nm "journal_n"], []⟩

def sgAny1 : Sig := ⟨[.any], [], [], true⟩

def demoE (sg : Sig) : CEnv := ⟨demoC, [], sg, []⟩

theorem cfgOK_demo : CfgOK demoC := fun t tag h => by simp [demoC] at h

theorem allocCfg_demo : AllocCfg demoC := (allocCfg_iff demoC).mpr (by decide)

/-- Checks a guest function: `chk` from the entry environment of `sg` accepts its body. -/
def chkFn (sg : Sig) (d : Flapjack.Decl (BitVec 64)) : Bool :=
  (chk (demoE sg) (initEnv (fnEntry d).2.1 sg.params 0 ⟨[], []⟩) (fnEntry d).2.2.1).isSome

theorem chk_pc_add : chkFn sgAny1 Guest.Software.guestFn_pc_add = true := by decide_cbv

theorem chk_track : chkFn sgAny1 Guest.Software.guestFn_track_ancestor_access = true := by
  decide_cbv

theorem chk_op_stop : chkFn ⟨[], [], [], true⟩ Guest.Software.guestFn_op_stop = false := by
  decide_cbv

theorem chk_frame_halt : chkFn sgAny1 Guest.Software.guestFn_frame_halt = false := by
  decide_cbv

/-- An accepted guest function has its plain summary. -/
theorem summ_of_chkFn {σ : Type} {X : Ctx 64} (hX : X.code.lookup = guestCode)
    {H : Hooks σ} (hH : HooksLawful demoC H) (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0)
    (hNS : NullSafe X)
    {sg : Sig} {d : Flapjack.Decl (BitVec 64)}
    (hd : d ∈ Guest.Software.guestAst) (hf : ∃ fd, d = .function fd)
    (hlen : sg.params.length = (fnEntry d).2.1.length) (hc : chkFn sg d = true) :
    CSumm σ X demoC H (fnEntry d).1 sg [] := by
  unfold chkFn at hc
  obtain ⟨o, ho⟩ := Option.isSome_iff_exists.mp hc
  have hcode : X.code.lookup (fnEntry d).1 =
      some ((fnEntry d).2.1, (fnEntry d).2.2.1, (fnEntry d).2.2.2) := by
    rw [hX]; exact code_of_entry hd hf rfl
  exact summ_of_chk hH cfgOK_demo hal allocCfg_demo (winSpecs_guest hX) hNS rfl rfl
    (fun _ _ _ h => by simp [demoE] at h) rfl rfl hcode hlen ho

theorem summ_pc_add {σ : Type} {X : Ctx 64} (hX : X.code.lookup = guestCode) {H : Hooks σ}
    (hH : HooksLawful demoC H) (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hNS : NullSafe X) :
    CSumm σ X demoC H (nm "pc_add") sgAny1 [] :=
  summ_of_chkFn hX hH hal hNS (List.getElem_mem (l := Guest.Software.guestAst) (n := 468)
    (by decide)) ⟨_, rfl⟩ (by decide_cbv) chk_pc_add

theorem summ_track_ancestor_access {σ : Type} {X : Ctx 64} (hX : X.code.lookup = guestCode)
    {H : Hooks σ} (hH : HooksLawful demoC H) (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0)
    (hNS : NullSafe X) : CSumm σ X demoC H (nm "track_ancestor_access") sgAny1 [] :=
  summ_of_chkFn hX hH hal hNS (List.getElem_mem (l := Guest.Software.guestAst) (n := 402)
    (by decide)) ⟨_, rfl⟩ (by decide_cbv) chk_track

end InitECandidate.Solver.MemSafe
