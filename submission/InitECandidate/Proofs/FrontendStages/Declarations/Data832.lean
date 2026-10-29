import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify816
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body832_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "entry", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "h"]

def body832_1 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "bloom", Flapjack.Exp.var Flapjack.VarKind.local "byte_index"])
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "bloom", Flapjack.Exp.var Flapjack.VarKind.local "byte_index"]),
      Flapjack.Exp.var Flapjack.VarKind.local "bv"])

def body832_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "idx"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "idx", Flapjack.Exp.const 2#64])

def body832_3 : Prog (BitVec 64) :=
.seq body832_1 body832_2

def body832_4 : Prog (BitVec 64) :=
.dec ("bv") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.const 1#64)
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.const 7#64,
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "bit_index", Flapjack.Exp.const 7#64]])) body832_3

def body832_5 : Prog (BitVec 64) :=
.dec ("byte_index") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "bit_index") (Flapjack.Exp.const 3#64)) body832_4

def body832_6 : Prog (BitVec 64) :=
.dec ("bit_index") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 2047#64, Flapjack.Exp.var Flapjack.VarKind.local "bit"]) body832_5

def body832_7 : Prog (BitVec 64) :=
.dec ("bit") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "idx"]))
          (Flapjack.Exp.const 8#64),
        Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "idx",
              Flapjack.Exp.const 1#64])],
    Flapjack.Exp.const 2047#64]) body832_6

def body832_8 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 6#64)) body832_7

def body832_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body832_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body832_11 : Prog (BitVec 64) :=
.seq body832_9 body832_10

def body832_12 : Prog (BitVec 64) :=
.seq body832_8 body832_11

def body832_13 : Prog (BitVec 64) :=
.dec ("idx") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body832_12

def body832_14 : Prog (BitVec 64) :=
.seq body832_0 body832_13

def body832_15 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body832_14

def body832_16 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body832_15

def body832_17 : Prog (BitVec 64) :=
.seq body832_8 body832_9

def body832_18 : Prog (BitVec 64) :=
.seq body832_17 body832_10

def body832_19 : Prog (BitVec 64) :=
.dec ("idx") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body832_18

def body832_20 : Prog (BitVec 64) :=
.seq body832_0 body832_19

def body832_21 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body832_20

def body832_22 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body832_21

def originalData832 : Decl (BitVec 64) :=
.function { name := "add_to_bloom", inline := false, exported := false, params := [("bloom", Flapjack.Shape.one), ("entry", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body832_16, returnShape := (Flapjack.Shape.one) }
def simplifiedData832 : Decl (BitVec 64) :=
.function { name := "add_to_bloom", inline := false, exported := false, params := [("bloom", Flapjack.Shape.one), ("entry", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body832_22, returnShape := (Flapjack.Shape.one) }
def original832 := Pancake.PanLang.declToHOL originalData832
def simplified832 := Pancake.PanLang.declToHOL simplifiedData832
end InitECandidate.Proofs.FrontendStages.Declarations
