import InitECandidate.Solver.Band3.WsGetStorage
import InitECandidate.Solver.MemSafe.Shards.CtabFind

/-!
# Band item #17: `get_storage_original` (sonnet-store)

```
fun {1,1,1,1} get_storage_original(1 addr, 1 key) {
  var 1 created = htab_has(lds 1 (ts + TS_CREATED), addr);
  if created != 0 { return <0,0,0,0>; }
  var {1,1} v = stor_lookup(lds 1 (bs + BS_STOR_WRITES), addr, key);
  if v.0 != 0 { return lds {1,1,1,1} (v.1); }
  record_pre_state_read(addr);
  var {1,1,1,1} r = ws_get_storage(addr, key);
  return r; }
```

**`gso_condCost hGT`**: `CondCost … "get_storage_original" gsoSig (fun _ _ _ => True) gsoB`, with
`gsoSig = ⟨[.buf 20, .any], [], [], true⟩` (the `Sigs3` signature). `htab_has`, `stor_lookup` and
`record_pre_state_read` are `tab26` entries (indices 455, 395, 450); `addr` stays a `BufOK`
buffer across them (`AuxA`), which `record_pre_state_read` needs. The last conditional call is
`ws_get_storage` (`wgs_condCost`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Band3
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type}

/-- `lds 1 (g + off)`. -/
def ldG (g : String) (off : Nat) : ExpHOL 64 := .load .one (.op .add [.var .global (nm g), cw off])

def gsoBody : ProgHOL 64 :=
  .decCall (nm "created") .one (nm "htab_has") [ldG "ts" 56, lv (nm "addr")]
    (.seq (.ite (.cmp .notEqual (lv (nm "created")) (cw 0)) (.return zero4) .skip)
      (.decCall (nm "v") (.comb [.one, .one]) (nm "stor_lookup")
        [ldG "bs" 32, lv (nm "addr"), lv (nm "key")]
        (.seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "v"))) (cw 0))
            (.return (.load sh4 (.rfield 1 (lv (nm "v"))))) .skip)
          (.seq (callD (nm "record_pre_state_read") [lv (nm "addr")])
            (.decCall (nm "r") sh4 (nm "ws_get_storage") [lv (nm "addr"), lv (nm "key")]
              (.return (lv (nm "r"))))))))

theorem entry_gso : fnEntry Guest.Software.guestFn_get_storage_original =
    (nm "get_storage_original", params_wgs, gsoBody, sh4) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_gso : guestCode (nm "get_storage_original") = some (params_wgs, gsoBody, sh4) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 379) (by decide)) ⟨_, rfl⟩
    entry_gso

/-! ## The cost -/

def bHas : Nat := 92233720368547758087
def bStor : Nat := 184467440737095516176
def bRpsr : Nat := 340282366920938464441052043338374447207

/-- `get_storage_original`'s signature (`Sigs3`). -/
def gsoSig : Sig := ⟨[.buf 20, .any], [], [], true⟩

def gsoB : Nat :=
  1 + bHas + (max 0 0 + (1 + bStor + (max 0 0 + (1 + bRpsr + 0 + (1 + wgsB + 0)))))

theorem cs_has : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "htab_has")
    ⟨[.any, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem cs_stor : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "stor_lookup")
    ⟨[.any, .any, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

/-- The capabilities of `record_pre_state_read` (`tab26[450]`): type capabilities only. -/
def rpsrCaps : List Cap :=
  [⟨anyG, 10, [], true⟩, ⟨anyG, 14, [], true⟩, ⟨anyG, 11, [], true⟩, ⟨anyG, 12, [], true⟩,
    ⟨anyG, 42, [], true⟩, ⟨anyG, 43, [], true⟩, ⟨anyG, 44, [], true⟩, ⟨anyG, 45, [], true⟩, ⟨anyG, 55, [], true⟩, ⟨anyG, 65, [], true⟩, ⟨anyG, 66, [], true⟩, ⟨anyG, 67, [], true⟩, ⟨anyG, 68, [], true⟩, ⟨anyG, 69, [], true⟩, ⟨anyG, 70, [], true⟩, ⟨anyG, 71, [], true⟩]

theorem cs_rpsr : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ))
    (nm "record_pre_state_read") ⟨[.buf 20], [], [], true⟩ rpsrCaps :=
  ctab% Rec.tab26_guestR

theorem rpsrCaps_any : ∀ c ∈ rpsrCaps, c.g = anyG := by simp [rpsrCaps]

/-- The `ArgsOK` of a `[.buf 20]` call on the local `addr`. -/
theorem argsOK_addr20 {C : Cfg} {Γ : Gam} {p : Ptrs} {sg : Sig} (hsg : sg.params = [.buf 20])
    {s : State σ} {x : MlS} {A : BitVec 64} (hl : s.locals.lookup x = some (.val (.word A)))
    (hb : BufOK C Γ p A.toNat 20) {vs : List (ValueHOL 64)} (hvs : evs s [lv x] = some vs) :
    ArgsOK C Γ p sg.params vs := by
  rw [evs_lv1 hl hvs, hsg]
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hw
    subst hpt hw; exact ⟨A, rfl, hb⟩
  · simp at hpt

/-- The initial `AuxA` from the function's own `ArgsOK` (parameters `[buf n, any]`). -/
theorem auxA_init2 {C : Cfg} {Γ : Gam} {p : Ptrs} {n : Nat} {sg : Sig}
    (hsg : sg.params = [.buf n, .any]) {A B : ValueHOL 64} (hA : ArgsOK C Γ p sg.params [A, B])
    {callee : Lcs} {pa : MlS} (hl : callee.lookup pa = some A) :
    ∃ w : BitVec 64, callee.lookup pa = some (.val (.word w)) ∧ BufOK C Γ p w.toNat n := by
  have h0 := hA.2 0 (.buf n) A (by rw [hsg]; rfl) rfl
  obtain ⟨w, hw, hb⟩ := h0
  cases A with
  | val v =>
    cases v with
    | word w' =>
      simp [MemSafe.wordOf] at hw; subst hw
      exact ⟨w', hl, hb⟩
  | _ => simp [MemSafe.wordOf] at hw

set_option linter.unusedVariables false in
/-- **Band item #17**: `get_storage_original`'s conditional cost, from `G` alone. -/
theorem gso_condCost
    (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR)) :
    CondCost σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "get_storage_original")
      gsoSig (fun _ _ _ => True) gsoB := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hA, hB⟩ := lookupCode_two code_gso (by decide) hl
  rintro s hs ⟨hloc, Γ, p, hG, hp, hargs, -⟩ hg
  obtain ⟨w, hw, hbw⟩ := auxA_init2 (sg := gsoSig) rfl hargs (callee := callee) hA
  have main : Inv.CostP σ guestCtx (PGt Types.guestC (Hooks.guestHooksR (σ := σ))
      (AuxA (nm "addr") 20)) gsoBody gsoB := by
    unfold gsoBody gsoB
    refine costP_decCall_S hH (Aux' := AuxA (nm "addr") 20) (PreC := fun _ _ => True) cs_has
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "htab_has") (B := bHas) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p _ _ _ vs hvs callee =>
        ⟨hargs_any (by simp) rfl hvs, reqOK_nil⟩)
      (fun s st callee Γ p Γ' p' vs v _ hG hA hvs _ hcore hq =>
        auxA_step hA (stp_of_core_s hH hG hcore) (lk_sv (by decide) v st s.locals)) ?_
    refine costP_guard ?_
    refine costP_decCall_S hH (Aux' := AuxA (nm "addr") 20) (PreC := fun _ _ => True) cs_stor
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "stor_lookup") (B := bStor) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p _ _ _ vs hvs callee =>
        ⟨hargs_any (by simp) rfl hvs, reqOK_nil⟩)
      (fun s st callee Γ p Γ' p' vs v _ hG hA hvs _ hcore hq =>
        auxA_step hA (stp_of_core_s hH hG hcore) (lk_sv (by decide) v st s.locals)) ?_
    refine costP_guard ?_
    refine costP_seq_callD_S hH (Aux' := AuxA (nm "addr") 20) (PreC := fun _ _ => True) cs_rpsr
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "record_pre_state_read") (B := bRpsr) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p _ _ hA vs hvs callee => by
        obtain ⟨A, hAl, hb⟩ := hA
        exact ⟨argsOK_addr20 rfl hAl hb hvs, reqOK_anyG rpsrCaps_any⟩)
      (fun s st callee Γ p Γ' p' vs v hG hA hvs _ hcore hq =>
        auxA_step hA (stp_of_core_s hH hG hcore) rfl) ?_
    refine Band.costP_decCall (wgs_condCost (σ := σ) hGT) ?_ (funSpec_true _) ?_
    · intro s _ hP vs hvs callee
      obtain ⟨Γ, p, hG, hp, -⟩ := hP
      exact ⟨Γ, p, (Frames.G_locFree hH s _ _).mpr hG, (Frames.ptrsOf_congr rfl).trans hp,
        hargs_any (by simp [wgsSig]) rfl hvs, trivial⟩
    · intro _ _ _ _ _ _ _ _ _ _ _
      exact Inv.costP_of_cost (cost_return _)
  exact main s hs ⟨Γ, p, hG, hp, w, by rw [hloc]; exact hw, hbw⟩ hg

end InitECandidate.Solver.Band3

#print axioms InitECandidate.Solver.Band3.gso_condCost
