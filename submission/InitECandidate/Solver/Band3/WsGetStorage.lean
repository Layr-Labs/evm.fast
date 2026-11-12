import InitECandidate.Solver.Band3.Core
import InitECandidate.Solver.MemSafe.Shards.CtabFind

/-!
# Band item #14: `ws_get_storage` (sonnet-store)

```
fun {1,1,1,1} ws_get_storage(1 addr, 1 key) {
  var 1 root = ws_storage_root_of(addr);
  var 1 eq = memeq(root, empty_trie_root, 32);
  if eq != 0 { return <0,0,0,0>; }
  var 1 node = ws_storage_trie(root);
  <heap_mark, alloc, keccak256, trie_lookup, heap_release, rlp_decode_fully, u256_from_be> }
```

* **`wgs_condCost hGT`**: `CondCost … "ws_get_storage" wgsSig (fun _ _ _ => True) wgsB` at `guestHooksR`.
  `ws_storage_root_of` and `memeq` are `tab26` entries (`tab26_guestR`, indices 444 / 471): `G`
  and the allocator pointers survive them; `ws_storage_trie`'s cost is `Wit.wst_condCost`
  (any signature, `G` alone, via `hGT`). The suffix is all-states (`costA`).
* `hGT` is the STAGED configuration fact (`guestC.GT.lookup ws = some (.nptr tWSR)`).
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

def sh4 : ShapeHOL := .comb [.one, .one, .one, .one]
def zero4 : ExpHOL 64 := .rstruct [cw 0, cw 0, cw 0, cw 0]

/-- The all-states suffix after `ws_storage_trie`. -/
def wgsSuf : ProgHOL 64 :=
  .decCall (nm "mark") .one (nm "heap_mark") []
    (.decCall (nm "h") .one (nm "alloc") [cw 32]
      (.seq (callD (nm "keccak256") [lv (nm "key"), cw 32, lv (nm "h")])
        (.decCall (nm "r") (.comb [.one, .one, .one]) (nm "trie_lookup") [lv (nm "node"), lv (nm "h")]
          (.seq (callD (nm "heap_release") [lv (nm "mark")])
            (.seq (.ite (.cmp .equal (.rfield 0 (lv (nm "r"))) (cw 0)) (.return zero4) .skip)
              (.decCall (nm "it") sh4 (nm "rlp_decode_fully")
                [.rfield 1 (lv (nm "r")), .rfield 2 (lv (nm "r"))]
                (.seq (.ite (.cmp .equal (.rfield 0 (lv (nm "it"))) (cw 1)) (.return zero4) .skip)
                  (.seq (.ite (.cmp .lower (cw 32) (.rfield 2 (lv (nm "it"))))
                      (.raise (nm "StateErr") (cw 1)) .skip)
                    (.decCall (nm "v") sh4 (nm "u256_from_be")
                      [.rfield 1 (lv (nm "it")), .rfield 2 (lv (nm "it"))]
                      (.return (lv (nm "v")))))))))))) 

def wgsBody : ProgHOL 64 :=
  .decCall (nm "root") .one (nm "ws_storage_root_of") [lv (nm "addr")]
    (.decCall (nm "eq") .one (nm "memeq")
      [lv (nm "root"), .var .global (nm "empty_trie_root"), cw 32]
      (.seq (.ite (.cmp .notEqual (lv (nm "eq")) (cw 0)) (.return zero4) .skip)
        (.decCall (nm "node") .one (nm "ws_storage_trie") [lv (nm "root")] wgsSuf)))

def params_wgs : List (MlS × ShapeHOL) := [(nm "addr", .one), (nm "key", .one)]

theorem entry_wgs : fnEntry Guest.Software.guestFn_ws_get_storage =
    (nm "ws_get_storage", params_wgs, wgsBody, sh4) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_wgs : guestCode (nm "ws_get_storage") = some (params_wgs, wgsBody, sh4) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 369) (by decide)) ⟨_, rfl⟩
    entry_wgs

/-! ## The cost -/

def bRoot : Nat := 1133820847152277381595526740344875939568889
def bMemeq : Nat := 73786976294838206468
def wgsSufB : Nat := 349129708610465634469517518663856120929631
def wgsB : Nat := 1 + bRoot + (1 + bMemeq + (max 0 0 + (1 + Wit.wstB + wgsSufB)))

/-- `ws_get_storage`'s signature (`Sigs1`). -/
def wgsSig : Sig := ⟨[.any, .any], [], [], true⟩

set_option cbv.maxSteps 4000000000 in
theorem wgsSuf_cost : Cost σ guestCtx wgsSuf wgsSufB :=
  cost_guest_of_costA (by decide_cbv)

/-- The signature used for the `ws_storage_trie` call (`wst_condCost` holds for any). -/
def wstSigA : Sig := ⟨[.any], [], [], true⟩

/-- `ws_storage_root_of` (`tab26[444]`). -/
theorem cs_root : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_storage_root_of")
    ⟨[.any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

/-- `memeq` (`tab26[471]`). -/
theorem cs_memeq : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "memeq")
    ⟨[.any, .any, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

/-- **Band item #14**: `ws_get_storage`'s conditional cost, from `G` alone (given the staged
`hGT`). -/
theorem wgs_condCost
    (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR)) :
    CondCost σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_get_storage") wgsSig
      (fun _ _ _ => True) wgsB := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -, hbind⟩ := lookupCode_gen code_wgs hl
  rintro s hs ⟨hloc, Γ, p, hG, hp, -, -⟩ hg
  have main : Inv.CostP σ guestCtx (PGt Types.guestC (Hooks.guestHooksR (σ := σ))
      (fun _ _ _ => True)) wgsBody wgsB := by
    unfold wgsBody wgsB
    refine costP_decCall_S hH (Aux' := fun _ _ _ => True) (PreC := fun _ _ => True) cs_root
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "ws_storage_root_of") (B := bRoot) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p _ _ _ vs hvs callee =>
        ⟨hargs_any (by simp) rfl hvs, reqOK_nil⟩)
      (fun _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ => trivial) ?_
    refine costP_decCall_S hH (Aux' := fun _ _ _ => True) (PreC := fun _ _ => True) cs_memeq
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "memeq") (B := bMemeq) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p _ _ _ vs hvs callee =>
        ⟨hargs_any (by simp) rfl hvs, reqOK_nil⟩)
      (fun _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ => trivial) ?_
    refine costP_guard ?_
    refine Band.costP_decCall (Wit.wst_condCost (σ := σ) hGT wstSigA) ?_ (funSpec_true _) ?_
    · intro s _ hP vs hvs callee
      obtain ⟨Γ, p, hG, hp, -⟩ := hP
      exact ⟨Γ, p, (Frames.G_locFree hH s _ _).mpr hG, (Frames.ptrsOf_congr rfl).trans hp,
        hargs_any (by simp [wstSigA]) rfl hvs, trivial⟩
    · intro _ _ _ _ _ _ _ _ _ _ _
      exact Inv.costP_of_cost wgsSuf_cost
  exact main s hs ⟨Γ, p, hG, hp, trivial⟩ hg

end InitECandidate.Solver.Band3

#print axioms InitECandidate.Solver.Band3.wgs_condCost
