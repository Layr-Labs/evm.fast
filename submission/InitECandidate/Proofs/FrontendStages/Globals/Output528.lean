import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data528
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate512
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody528_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "kv", Flapjack.Exp.var Flapjack.VarKind.local "key"]

def globalBody528_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 100#64]

def globalBody528_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2100#64]

def globalBody528_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "warm_storage_key"
  [Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]

def globalBody528_4 : Prog (BitVec 64) :=
.seq globalBody528_2 globalBody528_3

def globalBody528_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "warm") (Flapjack.Exp.const 0#64)) globalBody528_1 globalBody528_4

def globalBody528_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "v"]

def globalBody528_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody528_8 : Prog (BitVec 64) :=
.seq globalBody528_6 globalBody528_7

def globalBody528_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody528_10 : Prog (BitVec 64) :=
.seq globalBody528_8 globalBody528_9

def globalBody528_11 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("get_storage") ([Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]) globalBody528_10

def globalBody528_12 : Prog (BitVec 64) :=
.seq globalBody528_5 globalBody528_11

def globalBody528_13 : Prog (BitVec 64) :=
.decCall ("warm") (Flapjack.Shape.one) ("is_warm_storage_key") ([Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]) globalBody528_12

def globalBody528_14 : Prog (BitVec 64) :=
.dec ("target") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
            Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 32#64])) globalBody528_13

def globalBody528_15 : Prog (BitVec 64) :=
.seq globalBody528_0 globalBody528_14

def globalBody528_16 : Prog (BitVec 64) :=
.dec ("key") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 280#64])) globalBody528_15

def globalBody528_17 : Prog (BitVec 64) :=
.decCall ("kv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody528_16

def globalData528 : Decl (BitVec 64) :=
.function { name := "op_sload", inline := false, exported := false, params := [], body := globalBody528_17, returnShape := (Flapjack.Shape.one) }
def globalOutput528 := Pancake.PanLang.declToHOL globalData528
end InitECandidate.Proofs.FrontendStages.Declarations
