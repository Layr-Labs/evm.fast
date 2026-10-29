import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data513
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate497
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody513_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.var Flapjack.VarKind.local "cost"]

def globalBody513_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "extend_memory"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "x")]

def globalBody513_2 : Prog (BitVec 64) :=
.seq globalBody513_0 globalBody513_1

def globalBody513_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.load Flapjack.Shape.one
                (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
              Flapjack.Exp.const 24#64]),
        Flapjack.Exp.var Flapjack.VarKind.local "s"],
    Flapjack.Exp.var Flapjack.VarKind.local "n"]

def globalBody513_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.load Flapjack.Shape.one
                (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
              Flapjack.Exp.const 24#64]),
        Flapjack.Exp.var Flapjack.VarKind.local "d"],
    Flapjack.Exp.var Flapjack.VarKind.local "tmp", Flapjack.Exp.var Flapjack.VarKind.local "n"]

def globalBody513_5 : Prog (BitVec 64) :=
.seq globalBody513_3 globalBody513_4

def globalBody513_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody513_7 : Prog (BitVec 64) :=
.seq globalBody513_5 globalBody513_6

def globalBody513_8 : Prog (BitVec 64) :=
.decCall ("tmp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) globalBody513_7

def globalBody513_9 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody513_8

def globalBody513_10 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "src"]) globalBody513_9

def globalBody513_11 : Prog (BitVec 64) :=
.decCall ("d") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "dst"]) globalBody513_10

def globalBody513_12 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody513_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) globalBody513_11 globalBody513_12

def globalBody513_14 : Prog (BitVec 64) :=
.seq globalBody513_2 globalBody513_13

def globalBody513_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody513_16 : Prog (BitVec 64) :=
.seq globalBody513_14 globalBody513_15

def globalBody513_17 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody513_18 : Prog (BitVec 64) :=
.seq globalBody513_16 globalBody513_17

def globalBody513_19 : Prog (BitVec 64) :=
.decCall ("cost") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.const 3#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 3#64, Flapjack.Exp.var Flapjack.VarKind.local "w"]],
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "x")]) globalBody513_18

def globalBody513_20 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("extend_memory_cost2") ([Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "len",
  Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "len"]) globalBody513_19

def globalBody513_21 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("words_of") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) globalBody513_20

def globalBody513_22 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "len"]) globalBody513_21

def globalBody513_23 : Prog (BitVec 64) :=
.decCall ("len") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody513_22

def globalBody513_24 : Prog (BitVec 64) :=
.decCall ("src") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody513_23

def globalBody513_25 : Prog (BitVec 64) :=
.decCall ("dst") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody513_24

def globalData513 : Decl (BitVec 64) :=
.function { name := "op_mcopy", inline := false, exported := false, params := [], body := globalBody513_25, returnShape := (Flapjack.Shape.one) }
def globalOutput513 := Pancake.PanLang.declToHOL globalData513
end InitECandidate.Proofs.FrontendStages.Declarations
