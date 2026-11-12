import InitECandidate.Solver.Band3.OpSload
import InitECandidate.Solver.MemSafe.Shards.CtabFind

/-!
# Band item #20: `op_sstore` (sonnet-store)

The prefix is `require_not_static`, two `stack_pop`s, the `evm_key_buf` / `target` locals,
`u256_to_be32`, `is_warm_storage_key`, the `access_cost` local and its guarded assignment, `max`,
`check_gas`, `charge_gas`, the guarded `warm_storage_key`; then the two conditional calls
`get_storage_original(target, key)` and `get_storage(target, key)`; the suffix (`u256_eq` ... `set_storage`,
`pc_add`) is all-states (`costA`).

**Hypothesis `GsoSumm`** (memory-safety lane): `G` between the two conditional calls needs a
summary of `get_storage_original` at `guestHooksR`. It is NOT in `tab26` (it needs summaries of
`ws_get_storage`, `ws_storage_trie`, `decode_witness_to_mpt`). Stated as the capability summary with
the type capabilities of `record_pre_state_read` (`rpsrCaps`; `htab_set` of `ws_storage_trie`
needs only caps already in that list; `decode_witness_to_mpt` grows the typing with fresh nodes).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Band3
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-- **The memory-safety summary of `get_storage_original` (open, memory-safety lane).** -/
def GsoSumm (σ : Type) : Prop :=
  CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "get_storage_original") gsoSig rpsrCaps

def evR : ExpHOL 64 := .op .add [.var .global (nm "ev"), cw 0x60]
def ldR : ExpHOL 64 := .load .one evR
def bz (e : ExpHOL 64) : ExpHOL 64 := .cmp .notEqual (cw 0) e
def isNe (x : String) : ExpHOL 64 := bz (.cmp .notEqual (lv (nm x)) (cw 0))
def isEq (x : String) : ExpHOL 64 := bz (.cmp .equal (lv (nm x)) (cw 0))

def ossSuf : ProgHOL 64 :=
  .decCall (nm "oc") .one (nm "u256_eq") [lv (nm "original"), lv (nm "current")]
   (.decCall (nm "cn") .one (nm "u256_eq") [lv (nm "current"), lv (nm "new_value")]
    (.decCall (nm "on") .one (nm "u256_eq") [lv (nm "original"), lv (nm "new_value")]
     (.decCall (nm "oz") .one (nm "u256_is_zero") [lv (nm "original")]
      (.decCall (nm "cz") .one (nm "u256_is_zero") [lv (nm "current")]
       (.decCall (nm "nz") .one (nm "u256_is_zero") [lv (nm "new_value")]
        (.dec (nm "gas_cost") .one (lv (nm "access_cost"))
         (.seq (.ite (.op .and [isNe "oc", isEq "cn"])
              (.assign .local (nm "gas_cost") (.op .add [lv (nm "gas_cost"), cw 0x2710])) .skip)
          (.seq (.ite (.cmp .equal (lv (nm "cn")) (cw 0))
              (.seq (.ite (.op .and [isEq "oz", isEq "cz", isNe "nz"])
                    (.store evR (.op .add [ldR, cw 0x2d60])) .skip)
                (.seq (.ite (.op .and [isEq "oz", isNe "cz"])
                      (.store evR (.op .sub [ldR, cw 0x2d60])) .skip)
                  (.ite (.cmp .notEqual (lv (nm "on")) (cw 0))
                    (.store evR (.op .add [ldR, cw 0x2710])) .skip))) .skip)
           (.dec (nm "state_gas") .one (cw 0)
            (.seq (.ite (.op .and [isNe "oc", isEq "cn", isNe "oz"])
                (.assign .local (nm "state_gas") (cw 0x17e80)) .skip)
             (.seq (.ite (.op .and [isEq "cn", isNe "on", isNe "oz"])
                 (callD (nm "credit_state_gas_refund") [cw 0x17e80]) .skip)
              (.seq (callD (nm "charge_gas") [.op .sub [lv (nm "gas_cost"), lv (nm "access_cost")]])
               (.seq (callD (nm "charge_state_gas") [lv (nm "state_gas")])
                (.seq (callD (nm "set_storage") [lv (nm "target"), lv (nm "key"), lv (nm "new_value")])
                 (.seq (callD (nm "pc_add") [cw 1]) (.return (cw 0)))))))))))))))))

def ossBody : ProgHOL 64 :=
  .seq (callD (nm "require_not_static") [])
   (.decCall (nm "kv") sh4 (nm "stack_pop") []
    (.decCall (nm "new_value") sh4 (nm "stack_pop") []
     (.dec (nm "key") .one (.var .global (nm "evm_key_buf"))
      (.seq (callD (nm "u256_to_be32") [lv (nm "kv"), lv (nm "key")])
       (.dec (nm "target") .one tgtE
        (.decCall (nm "warm") .one (nm "is_warm_storage_key") [lv (nm "target"), lv (nm "key")]
         (.dec (nm "access_cost") .one (cw 100)
          (.seq (.ite (.cmp .equal (lv (nm "warm")) (cw 0))
              (.assign .local (nm "access_cost") (cw 2100)) .skip)
           (.decCall (nm "mx") .one (nm "max") [lv (nm "access_cost"), .op .add [cw 0x8fc, cw 1]]
            (.seq (callD (nm "check_gas") [lv (nm "mx")])
             (.seq (callD (nm "charge_gas") [lv (nm "access_cost")])
              (.seq (.ite (.cmp .equal (lv (nm "warm")) (cw 0))
                  (callD (nm "warm_storage_key") [lv (nm "target"), lv (nm "key")]) .skip)
               (.decCall (nm "original") sh4 (nm "get_storage_original")
                  [lv (nm "target"), lv (nm "key")]
                (.decCall (nm "current") sh4 (nm "get_storage")
                  [lv (nm "target"), lv (nm "key")] ossSuf))))))))))))))

theorem entry_oss : fnEntry Guest.Software.guestFn_op_sstore =
    (nm "op_sstore", [], ossBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_oss : guestCode (nm "op_sstore") = some ([], ossBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 528) (by decide)) ⟨_, rfl⟩
    entry_oss

/-! ## The cost -/

def ossSufB : Nat := 326409290240107399936220917735436454888450552777895168705506

set_option cbv.maxSteps 4000000000 in
theorem ossSuf_cost : Cost σ guestCtx ossSuf ossSufB :=
  cost_guest_of_costA (by decide_cbv)

theorem cs_rns : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "require_not_static")
    ⟨[], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR
theorem cs_max : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "max")
    ⟨[.any, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR
theorem cs_chk : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "check_gas")
    ⟨[.any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem capOK_rpsr : CapOK rpsrCaps := by unfold CapOK rpsrCaps; decide

theorem auxL_setVar {xs : List (MlS × Nat)} {x : MlS} (hx : ∀ q ∈ xs, x ≠ q.1) {s : State σ}
    {Γ : Gam} {p : Ptrs} (v : ValueHOL 64) (h : AuxL xs s Γ p) : AuxL xs (setVarHOLFinite x v s) Γ p :=
  ⟨opA_congr rfl rfl h.1, fun q hq => by
    obtain ⟨A, hA, hb⟩ := h.2 q hq
    exact ⟨A, by rw [lk_set_ne _ _ (hx q hq)]; exact hA, hb⟩⟩

theorem pgt_setVar {H : Hooks σ} (hH : HooksLawful guestC H) {xs : List (MlS × Nat)} {x : MlS}
    (hx : ∀ q ∈ xs, x ≠ q.1) {s : State σ} (v : ValueHOL 64)
    (h : PGt guestC H (AuxL xs) s) : PGt guestC H (AuxL xs) (setVarHOLFinite x v s) := by
  obtain ⟨Γ, p, hG, hp, hA⟩ := h
  exact ⟨Γ, p, (Frames.G_locFree hH s _ _).mpr hG, (Frames.ptrsOf_congr rfl).trans hp,
    auxL_setVar hx v hA⟩

def ossB : Nat :=
  1 + 0 + 0 + (1 + 0 + (1 + 0 + (1 + bTb + 0 + (1 + bIw + (max 0 0 + (1 + 0 + (1 + 0 + 0 +
    (1 + 0 + 0 + (max (1 + bWsk + 0) 0 + (1 + gsoB + (1 + gsB + ossSufB))))))))))) 

set_option linter.unusedVariables false in
/-- **Band item #20**: `op_sstore`'s conditional cost under `PreOpX` (the `hss` of
`Wit.op_dispatch_condCost_R`), given the staged `hGT` and the open `get_storage_original`
summary `GsoSumm`. -/
theorem oss_condCost {M : Nat}
    (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR)) (hGSO : GsoSumm σ) :
    CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_sstore") (Frames.sg0 [])
      (Frames.PreOpX guestC tEV tCK Frames.GP Frames.GR M) ossB := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  have hGSO' : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "get_storage_original")
      gsoSig rpsrCaps := hGSO
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -, -⟩ := lookupCode_gen code_oss hl
  rintro s hs ⟨hloc, Γ, p, hG, hp, hargs, hpre⟩ hg
  have main : Inv.CostP σ guestCtx (PGt guestC (Hooks.guestHooksR (σ := σ)) (AuxL [])) ossBody
      ossB := by
    unfold ossBody ossB
    -- `require_not_static()`
    refine costP_seq_callD_S hH (Aux' := AuxL []) (PreC := fun _ _ => True) cs_rns
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "require_not_static") (B := 0) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p hG _ hA vs hvs callee => ⟨hargs_any (by simp) rfl hvs, reqOK_nil⟩)
      (fun s st callee Γ p Γ' p' vs v hG hA hvs hargsOK hcore hq =>
        auxL_core hH hG hA hargsOK capOK_nil (gw_nil rfl) hcore _ rfl rfl (fun _ _ => rfl)) ?_
    -- two pops
    refine costP_decCall_S hH (Aux' := AuxL []) (PreC := fun _ _ => True) cs_pop
      (Inv.calleeCostP_of_calleeCost (Wire.calleeCost_guest (f := nm "stack_pop") (B := 0) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p hG _ hA vs hvs callee =>
        ⟨hargs_any (by simp) rfl hvs, reqOK_ent hH evsk_stop hG hA⟩)
      (fun s st callee Γ p Γ' p' vs v hsh hG hA hvs hargsOK hcore hq =>
        auxL_core hH hG hA hargsOK capOK_stop (gw_nil rfl) hcore _ rfl rfl (by simp)) ?_
    refine costP_decCall_S hH (Aux' := AuxL []) (PreC := fun _ _ => True) cs_pop
      (Inv.calleeCostP_of_calleeCost (Wire.calleeCost_guest (f := nm "stack_pop") (B := 0) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p hG _ hA vs hvs callee =>
        ⟨hargs_any (by simp) rfl hvs, reqOK_ent hH evsk_stop hG hA⟩)
      (fun s st callee Γ p Γ' p' vs v hsh hG hA hvs hargsOK hcore hq =>
        auxL_core hH hG hA hargsOK capOK_stop (gw_nil rfl) hcore _ rfl rfl (by simp)) ?_
    -- `var key = evm_key_buf`
    refine costP_dec_G hH (Aux' := AuxL [(nm "key", 32)]) ?_ ?_
    · intro s hs0 Γ p hG hp hA v hv hsh
      have hG' := hG
      obtain ⟨-, -, -, -, -, -, hGl, -⟩ := hG
      obtain ⟨w, hw⟩ : ∃ w, gword s (nm "evm_key_buf") = some w := by
        obtain ⟨u, hu, -⟩ := hGl (nm "evm_key_buf") (.ptr tB32) gt_evm_key_buf
        exact ⟨u, hu⟩
      have hl := Frames.gword_some hw
      have hv' : s.globals.lookup (nm "evm_key_buf") = some v := hv
      rw [hl] at hv'
      cases hv'
      refine ⟨opA_congr rfl rfl hA.1, fun q hq => ?_⟩
      simp only [List.mem_singleton] at hq
      subst hq
      exact ⟨w, lk_set_self _ _ _, key_bufOK' hG' hp hw⟩
    refine costP_seq_callD_S hH (Aux' := AuxL [(nm "key", 32)]) (PreC := fun _ _ => True) cs_tb
      (Inv.calleeCostP_of_calleeCost (Wire.calleeCost_guest (f := nm "u256_to_be32") (B := bTb) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p hG hp hA vs hvs callee => by
        obtain ⟨A, hAl, hb⟩ := hA.2 (nm "key", 32) (by simp)
        exact ⟨argsOK_any_buf rfl hAl hb hvs, reqOK_nil⟩)
      (fun s st callee Γ p Γ' p' vs v hG hA hvs hargsOK hcore hq =>
        auxL_core hH hG hA hargsOK capOK_nil (gw_nil rfl) hcore _ rfl rfl (fun _ _ => rfl)) ?_
    refine costP_dec_G hH (Aux' := AuxL [(nm "key", 32), (nm "target", 20)]) ?_ ?_
    · intro s hs0 Γ p hG hp hA v hv hsh
      obtain ⟨T, rfl, hT⟩ := tgt_eval hA.1 hv
      refine ⟨opA_congr rfl rfl hA.1, fun q hq => ?_⟩
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
      rcases hq with rfl | rfl
      · obtain ⟨A, hAl, hb⟩ := hA.2 (nm "key", 32) (by simp)
        exact ⟨A, by rw [lk_set_ne _ _ (by decide)]; exact hAl, hb⟩
      · exact ⟨T, lk_set_self _ _ _, hT⟩
    refine costP_decCall_S hH (Aux' := AuxL [(nm "key", 32), (nm "target", 20)])
      (PreC := fun _ _ => True) cs_iw
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "is_warm_storage_key") (B := bIw) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p hG _ hA vs hvs callee =>
        ⟨hargs_any (by simp) rfl hvs, reqOK_ent hH evsk_iw hG hA⟩)
      (fun s st callee Γ p Γ' p' vs v hsh hG hA hvs hargsOK hcore hq =>
        auxL_core hH hG hA hargsOK capOK_iw (gw_nil rfl) hcore _ rfl rfl
          (fun q hq => by
            simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
            rcases hq with rfl | rfl <;> exact lk_sv (by decide) _ _ _)) ?_
    -- `var access_cost = 100`
    have hxs : ∀ q ∈ ([(nm "key", 32), (nm "target", 20)] : List (MlS × Nat)),
        nm "access_cost" ≠ q.1 := by
      intro q hq
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
      rcases hq with rfl | rfl <;> decide
    refine costP_dec_G hH (Aux' := AuxL [(nm "key", 32), (nm "target", 20)])
      (fun s hs0 Γ p hG hp hA v hv hsh => auxL_setVar hxs _ hA) ?_
    -- `if warm == 0 { access_cost = 2100 }`
    refine costP_seq_ite_S (Aux' := AuxL [(nm "key", 32), (nm "target", 20)])
      (Inv.costP_of_cost (cost_assign _ _ _)) (Inv.costP_of_cost cost_skip)
      (Spec.hoare_assign (fun s _ hP v hv _ => fun _ => pgt_setVar hH hxs v hP))
      (Spec.hoare_skip (fun s _ h _ => h)) ?_
    -- `var mx = max(access_cost, 2301)`
    refine costP_decCall_S hH (Aux' := AuxL [(nm "key", 32), (nm "target", 20)])
      (PreC := fun _ _ => True) cs_max
      (Inv.calleeCostP_of_calleeCost (Wire.calleeCost_guest (f := nm "max") (B := 0) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p hG _ hA vs hvs callee => ⟨hargs_any (by simp) rfl hvs, reqOK_nil⟩)
      (fun s st callee Γ p Γ' p' vs v hsh hG hA hvs hargsOK hcore hq =>
        auxL_core hH hG hA hargsOK capOK_nil (gw_nil rfl) hcore _ rfl rfl
          (fun q hq => by
            simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
            rcases hq with rfl | rfl <;> exact lk_sv (by decide) _ _ _)) ?_
    -- `check_gas(mx)`
    refine costP_seq_callD_S hH (Aux' := AuxL [(nm "key", 32), (nm "target", 20)])
      (PreC := fun _ _ => True) cs_chk
      (Inv.calleeCostP_of_calleeCost (Wire.calleeCost_guest (f := nm "check_gas") (B := 0) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p hG _ hA vs hvs callee => ⟨hargs_any (by simp) rfl hvs, reqOK_nil⟩)
      (fun s st callee Γ p Γ' p' vs v hG hA hvs hargsOK hcore hq =>
        auxL_core hH hG hA hargsOK capOK_nil (gw_nil rfl) hcore _ rfl rfl (fun _ _ => rfl)) ?_
    -- `charge_gas(access_cost)`
    refine costP_seq_callD_S hH (Aux' := AuxL [(nm "key", 32), (nm "target", 20)])
      (PreC := fun _ _ => True) cs_cg
      (Inv.calleeCostP_of_calleeCost (Wire.calleeCost_guest (f := nm "charge_gas") (B := 0) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p hG _ hA vs hvs callee =>
        ⟨hargs_any (by simp) rfl hvs, reqOK_ent hH evsk_cg hG hA⟩)
      (fun s st callee Γ p Γ' p' vs v hG hA hvs hargsOK hcore hq =>
        auxL_core hH hG hA hargsOK capOK_cg (gw_nil rfl) hcore _ rfl rfl (fun _ _ => rfl)) ?_
    -- `if warm == 0 { warm_storage_key(target, key) }`
    refine costP_seq_ite_S (Aux' := AuxL [(nm "key", 32), (nm "target", 20)])
      (costP_callD_S (sg := ⟨[.any, .any], [], [], true⟩) (PreC := fun _ _ => True)
        (Inv.calleeCostP_of_calleeCost
          (Wire.calleeCost_guest (f := nm "warm_storage_key") (B := bWsk) rfl))
        (fun _ _ _ _ _ _ => trivial))
      (Inv.costP_of_cost cost_skip)
      (hoare_callD_S hH cs_wsk
        (fun s _ Γ p hG _ hA vs hvs callee =>
          ⟨hargs_any (by simp) rfl hvs, reqOK_ent hH evsk_wsk hG hA⟩)
        (fun s st callee Γ p Γ' p' vs v hG hA hvs hargsOK hcore hq =>
          auxL_core hH hG hA hargsOK capOK_wsk (gw_nil rfl) hcore _ rfl rfl (fun _ _ => rfl)))
      (Spec.hoare_skip (fun s _ h _ => h)) ?_
    -- `var original = get_storage_original(target, key)`
    refine costP_decCall_S hH (Aux' := AuxL [(nm "key", 32), (nm "target", 20)]) hGSO'
      (gso_condCost (σ := σ) hGT) ?_
      (fun s _ Γ p hG hp hA vs hvs callee => by
        obtain ⟨A, hAl, hb⟩ := hA.2 (nm "target", 20) (by simp)
        exact ⟨argsOK_buf_any rfl hAl hb hvs, reqOK_anyG rpsrCaps_any⟩)
      (fun s st callee Γ p Γ' p' vs v hsh hG hA hvs hargsOK hcore hq =>
        auxL_core hH hG hA hargsOK capOK_rpsr (gw_nil rfl) hcore _ rfl rfl
          (fun q hq => by
            simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
            rcases hq with rfl | rfl <;> exact lk_sv (by decide) _ _ _)) ?_
    · intro s _ hP vs hvs callee
      obtain ⟨Γ, p, hG, hp, hA⟩ := hP
      obtain ⟨A, hAl, hb⟩ := hA.2 (nm "target", 20) (by simp)
      exact ⟨Γ, p, (Frames.G_locFree hH s _ _).mpr hG, (Frames.ptrsOf_congr rfl).trans hp,
        argsOK_buf_any rfl hAl hb hvs, trivial⟩
    -- `var current = get_storage(target, key)`; the suffix
    refine Band.costP_decCall (gs_condCost (σ := σ) hGT) ?_ (funSpec_true _) ?_
    · intro s _ hP vs hvs callee
      obtain ⟨Γ, p, hG, hp, hA⟩ := hP
      obtain ⟨A, hAl, hb⟩ := hA.2 (nm "target", 20) (by simp)
      exact ⟨Γ, p, (Frames.G_locFree hH s _ _).mpr hG, (Frames.ptrsOf_congr rfl).trans hp,
        argsOK_buf_any rfl hAl hb hvs, Frames.jrNZ_congr (s := s) rfl hA.1.1⟩
    · intro _ _ _ _ _ _ _ _ _ _ _
      exact Inv.costP_of_cost ossSuf_cost
  exact main s hs ⟨Γ, p, hG, hp, opA_init hp hpre, by simp⟩ hg

end InitECandidate.Solver.Band3

#print axioms InitECandidate.Solver.Band3.oss_condCost
