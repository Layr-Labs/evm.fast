import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data837
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate821
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody837_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.const 1#64)

def globalBody837_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w" (Flapjack.Exp.const 1#64)

def globalBody837_2 : Prog (BitVec 64) :=
.seq globalBody837_0 globalBody837_1

def globalBody837_3 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.const 128#64)

def globalBody837_4 : Prog (BitVec 64) :=
.seq globalBody837_3 globalBody837_1

def globalBody837_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "succeeded") (Flapjack.Exp.const 0#64)) globalBody837_2 globalBody837_4

def globalBody837_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def globalBody837_7 : Prog (BitVec 64) :=
.seq globalBody837_5 globalBody837_6

def globalBody837_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "cumulative_gas"]

def globalBody837_9 : Prog (BitVec 64) :=
.seq globalBody837_7 globalBody837_8

def globalBody837_10 : Prog (BitVec 64) :=
.seq globalBody837_9 globalBody837_6

def globalBody837_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "logs_bloom"
  [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.var Flapjack.VarKind.local "bloom"]

def globalBody837_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "bloom",
    Flapjack.Exp.const 256#64]

def globalBody837_13 : Prog (BitVec 64) :=
.seq globalBody837_11 globalBody837_12

def globalBody837_14 : Prog (BitVec 64) :=
.seq globalBody837_13 globalBody837_6

def globalBody837_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "encode_logs"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "logs"]

def globalBody837_16 : Prog (BitVec 64) :=
.seq globalBody837_14 globalBody837_15

def globalBody837_17 : Prog (BitVec 64) :=
.seq globalBody837_16 globalBody837_6

def globalBody837_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_finish_list"
  [Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.var Flapjack.VarKind.local "p"]

def globalBody837_19 : Prog (BitVec 64) :=
.seq globalBody837_17 globalBody837_18

def globalBody837_20 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "tx_type")

def globalBody837_21 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.const 1#64],
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 1#64]])

def globalBody837_22 : Prog (BitVec 64) :=
.seq globalBody837_20 globalBody837_21

def globalBody837_23 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody837_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "tx_type") (Flapjack.Exp.const 0#64)) globalBody837_22 globalBody837_23

def globalBody837_25 : Prog (BitVec 64) :=
.seq globalBody837_19 globalBody837_24

def globalBody837_26 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct [Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def globalBody837_27 : Prog (BitVec 64) :=
.seq globalBody837_25 globalBody837_26

def globalBody837_28 : Prog (BitVec 64) :=
.decCall ("bloom") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 256#64]) globalBody837_27

def globalBody837_29 : Prog (BitVec 64) :=
.seq globalBody837_10 globalBody837_28

def globalBody837_30 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody837_29

def globalBody837_31 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.const 9#64]) globalBody837_30

def globalBody837_32 : Prog (BitVec 64) :=
.dec ("start") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 1#64]) globalBody837_31

def globalBody837_33 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "bound", Flapjack.Exp.const 400#64]]) globalBody837_32

def globalBody837_34 : Prog (BitVec 64) :=
.decCall ("bound") (Flapjack.Shape.one) ("logs_encoded_bound") ([Flapjack.Exp.var Flapjack.VarKind.local "logs"]) globalBody837_33

def globalData837 : Decl (BitVec 64) :=
.function { name := "encode_receipt", inline := false, exported := false, params := [("tx_type", Flapjack.Shape.one), ("succeeded", Flapjack.Shape.one), ("cumulative_gas", Flapjack.Shape.one),
  ("logs", Flapjack.Shape.one)], body := globalBody837_34, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput837 := Pancake.PanLang.declToHOL globalData837
end InitECandidate.Proofs.FrontendStages.Declarations
