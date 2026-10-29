import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify176
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body192_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "merkleize_progressive"
  [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp"]

def body192_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "act", Flapjack.Exp.const 32#64]

def body192_2 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "act",
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 3#64)])
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "act",
            Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "i")
              (Flapjack.Exp.const 3#64)]),
      Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.const 1#64)
        (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 7#64])])

def body192_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body192_4 : Prog (BitVec 64) :=
.seq body192_2 body192_3

def body192_5 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body192_4

def body192_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_pair"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp", Flapjack.Exp.var Flapjack.VarKind.local "act",
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body192_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body192_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body192_9 : Prog (BitVec 64) :=
.seq body192_7 body192_8

def body192_10 : Prog (BitVec 64) :=
.seq body192_6 body192_9

def body192_11 : Prog (BitVec 64) :=
.seq body192_5 body192_10

def body192_12 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body192_11

def body192_13 : Prog (BitVec 64) :=
.seq body192_1 body192_12

def body192_14 : Prog (BitVec 64) :=
.dec ("act") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tmp", Flapjack.Exp.const 32#64]) body192_13

def body192_15 : Prog (BitVec 64) :=
.seq body192_0 body192_14

def body192_16 : Prog (BitVec 64) :=
.decCall ("tmp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) body192_15

def body192_17 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body192_16

def body192_18 : Prog (BitVec 64) :=
.seq body192_5 body192_6

def body192_19 : Prog (BitVec 64) :=
.seq body192_18 body192_7

def body192_20 : Prog (BitVec 64) :=
.seq body192_19 body192_8

def body192_21 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body192_20

def body192_22 : Prog (BitVec 64) :=
.seq body192_1 body192_21

def body192_23 : Prog (BitVec 64) :=
.dec ("act") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tmp", Flapjack.Exp.const 32#64]) body192_22

def body192_24 : Prog (BitVec 64) :=
.seq body192_0 body192_23

def body192_25 : Prog (BitVec 64) :=
.decCall ("tmp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) body192_24

def body192_26 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body192_25

def originalData192 : Decl (BitVec 64) :=
.function { name := "htr_pcontainer", inline := false, exported := false, params := [("ch", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body192_17, returnShape := (Flapjack.Shape.one) }
def simplifiedData192 : Decl (BitVec 64) :=
.function { name := "htr_pcontainer", inline := false, exported := false, params := [("ch", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body192_26, returnShape := (Flapjack.Shape.one) }
def original192 := Pancake.PanLang.declToHOL originalData192
def simplified192 := Pancake.PanLang.declToHOL simplifiedData192
end InitECandidate.Proofs.FrontendStages.Declarations
