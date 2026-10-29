import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data555
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate539
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody555_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 20#64]

def globalBody555_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def globalBody555_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody555_3 : Prog (BitVec 64) :=
.seq globalBody555_1 globalBody555_2

def globalBody555_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody555_5 : Prog (BitVec 64) :=
.seq globalBody555_3 globalBody555_4

def globalBody555_6 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody555_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "b")
        (Flapjack.Exp.var Flapjack.VarKind.local "current"),
      Flapjack.Exp.cmp Flapjack.Cmp.lower
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 256#64])
        (Flapjack.Exp.var Flapjack.VarKind.local "current"),
      Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "b")
        (Flapjack.Exp.const 18446744073709551615#64)])) globalBody555_5 globalBody555_6

def globalBody555_8 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 50#64)

def globalBody555_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.var Flapjack.VarKind.local "offset")) globalBody555_8 globalBody555_6

def globalBody555_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "track_ancestor_access" [Flapjack.Exp.var Flapjack.VarKind.local "offset"]

def globalBody555_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "h"]

def globalBody555_12 : Prog (BitVec 64) :=
.seq globalBody555_10 globalBody555_11

def globalBody555_13 : Prog (BitVec 64) :=
.seq globalBody555_12 globalBody555_2

def globalBody555_14 : Prog (BitVec 64) :=
.seq globalBody555_13 globalBody555_4

def globalBody555_15 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 16#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "offset"],
          Flapjack.Exp.const 32#64]],
  Flapjack.Exp.const 32#64]) globalBody555_14

def globalBody555_16 : Prog (BitVec 64) :=
.seq globalBody555_9 globalBody555_15

def globalBody555_17 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 24#64])) globalBody555_16

def globalBody555_18 : Prog (BitVec 64) :=
.dec ("offset") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "current", Flapjack.Exp.var Flapjack.VarKind.local "b"]) globalBody555_17

def globalBody555_19 : Prog (BitVec 64) :=
.seq globalBody555_7 globalBody555_18

def globalBody555_20 : Prog (BitVec 64) :=
.decCall ("b") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "bn"]) globalBody555_19

def globalBody555_21 : Prog (BitVec 64) :=
.dec ("current") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 40#64])) globalBody555_20

def globalBody555_22 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) globalBody555_21

def globalBody555_23 : Prog (BitVec 64) :=
.seq globalBody555_0 globalBody555_22

def globalBody555_24 : Prog (BitVec 64) :=
.decCall ("bn") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody555_23

def globalData555 : Decl (BitVec 64) :=
.function { name := "op_blockhash", inline := false, exported := false, params := [], body := globalBody555_24, returnShape := (Flapjack.Shape.one) }
def globalOutput555 := Pancake.PanLang.declToHOL globalData555
end InitECandidate.Proofs.FrontendStages.Declarations
